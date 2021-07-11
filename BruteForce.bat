@echo off
@chcp.com 65001 >nul

:: Cores

set red=[40;31m
set amarelo=[40;33m
set verde=[40;32m
set azul=[40;34m
set roxo=[40;35m
set ciano=[40;36m
set branco=[40;37m
set cinza=[40;90m

set /p pass=Senha:


echo [%time%] - Loading...
for /F "delims=" %%a in (wordlist.txt) do (if %pass% == %%a echo [%time%] - %%a && goto final)
if not %pass% == %%a echo [%time%] - Password not found


:final
pause >nul
