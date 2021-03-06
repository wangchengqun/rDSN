SET bin_dir=%~dp0
SET TOP_DIR=%bin_dir%\..\..
SET INSTALL_DIR=%~f1
SET PORT=%2
SET zk=zookeeper-3.4.6

IF "%INSTALL_DIR%" EQU "" (
    set INSTALL_DIR=%TOP_DIR%\zk
)

IF "%PORT%" EQU "" (
    SET PORT=12181
)

TASKKILL /F /FI "WINDOWTITLE eq zk-%PORT% - %INSTALL_DIR%\%zk%\bin\zkServer.cmd"
TASKKILL /F /FI "WINDOWTITLE eq zk-%PORT% - %INSTALL_DIR%\%zk%\bin\zkServer.cmd"
GOTO exit

:usage
    ECHO run.cmd stop_zk [INSTALL_DIR = .\zk [PORT = 12181]]
    GOTO:EOF
    
:exit
