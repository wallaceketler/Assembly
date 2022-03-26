section .data
    msg db 'Hello World!', 0xA   ;db signifca que tem determinado tamanho
    tam equ $- msg               ;pega o tamanho do ponteiro
                                 ;tam deve vir imediatamente abaixo de msg
section .text

global _start

_start: 
    mov eax, 0x4    ;fala que algo vai ir pra saída padrão
    mov ebx, 0x1    ;complementa o anterior para a saída padrão 
    mov ecx, msg
    mov edx, tam
    int 0x80



    mov eax, 0x1    ;termina o programa
    mov ebx, 0x0    ;como se fosse um return 0
    int 0x80        ;avisa processador para executar informações








