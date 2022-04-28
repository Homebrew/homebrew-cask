cask "ords" do
  version "22.1.0.105.1723"
  sha256 "344d7e52137a1a978ecbb33f7d4b37fd3e58874e933395b76d7dff2c1ee675a9"

  url "https://download.oracle.com/otn_software/java/ords/ords-#{version}.zip"
  name "sqlcl"
  desc "Oracle REST Data Services provides REST services for your Oracle Database"
  homepage "https://www.oracle.com/rest"

  livecheck do
    url "https://www.oracle.com/database/technologies/appdev/rest-data-services-downloads.html"
    regex(/href=.*?ords[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  stage_only true

  caveats do
    depends_on_java "11+"
    path_environment_variable "#{staged_path}/bin"
  end
end
