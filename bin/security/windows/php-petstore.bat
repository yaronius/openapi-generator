set executable=.\modules\openapi-generator-cli\target\openapi-generator-cli.jar

If Not Exist %executable% (
  mvn clean package
)

REM set JAVA_OPTS=%JAVA_OPTS% -Xmx1024M
set ags=generate -i modules\openapi-generator\src\test\resources\2_0\petstore-security-test.yaml -g php -o samples\client\petstore-security-test\php\OpenAPIClient-php

java %JAVA_OPTS% -jar %executable% %ags%
