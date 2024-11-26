cask "sqlcl" do
  version "24.3.2.330.1718"
  sha256 :no_check

  url "https://download.oracle.com/otn_software/java/sqldeveloper/sqlcl-latest.zip"
  name "sqlcl"
  desc "Oracle SQLcl is the modern command-line interface for the Oracle Database"
  homepage "https://www.oracle.com/sqlcl"

  livecheck do
    url "https://www.oracle.com/database/sqldeveloper/technologies/sqlcl/download/"
    regex(/p>Version.*?(\d+(?:\.\d+)+)/i)
  end

  stage_only true

  zap trash: "~/.sqlcl"

  caveats do
    depends_on_java "11+"
    path_environment_variable "#{staged_path}/sqlcl/bin"
  end
end
