cask "ords" do
  version "22.1.0.105.1723"
  sha256 "344d7e52137a1a978ecbb33f7d4b37fd3e58874e933395b76d7dff2c1ee675a9"

  url "https://download.oracle.com/otn_software/java/ords/ords-#{version}.zip"
  name "sqlcl"
  desc "Oracle REST Data Services (ORDS) bridges HTTPS and your Oracle Database. A mid-tier Java application, ORDS provides a Database Management REST API, SQL Developer Web, a PL/SQL Gateway, SODA for REST, and the ability to publish RESTful Web Services for interacting with the data and stored procedures in your Oracle Database."
  homepage "https://www.oracle.com/rest"

  livecheck do
    url "https://www.oracle.com/database/technologies/appdev/rest-data-services-downloads.html"
    regex(/href=.*?ords[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  stage_only true

  caveats do
    depends_on_java "11+"
    path_environment_variable "#{staged_path}/ords/bin"
  end
end
