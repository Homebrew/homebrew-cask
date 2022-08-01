cask "sqlcl" do
  version "22.2.1.201.1451"
  sha256 "b478af0eb8a1bd864d47c06d242bc662ffc030f651781acd88469f5a839c18c7"

  url "https://download.oracle.com/otn_software/java/sqldeveloper/sqlcl-#{version}.zip"
  name "sqlcl"
  desc "Oracle SQLcl is the modern command-line interface for the Oracle Database"
  homepage "https://www.oracle.com/sqlcl"

  livecheck do
    url "https://www.oracle.com/tools/downloads/sqlcl-downloads.html"
    regex(/p>Version.*?(\d+(?:\.\d+)+)/i)
  end

  stage_only true

  caveats do
    depends_on_java "11+"
    path_environment_variable "#{staged_path}/sqlcl/bin"
  end
end
