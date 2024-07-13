section .data
	var1 dd 14		; Example values
	var2 dd 7
	var3 dd 3
	result dd 0		; Placeholder for result

section .text
	global _start

_start:

	; (var3 - var2)
	mov eax, [var3]		; Put var3 into eax
	sub eax, [var2]		; Subtract var2 from var3
	mov ebx, eax		; Move answer

	; (var1 +2)
	mov eax, [var1]		; Put var1 into eax
	add eax, 2		; Adds 2 to var1, stores in eax

	; Divide the two
	xor edx, edx		; Makes sure edx is clear
	idiv ebx		; Divides eax (var1) by ebx
	mov [result], eax	; Stores answer in result

	mov eax, 1
	xor ebx, ebx
	int 0x80
