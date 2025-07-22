cask "sqlcl" do
  version "25.2.2.199.0918"
  sha256 "62c20426441779520006c0973417d3e9665bad7babd61a046458fdec9bc61d5f"

  url "https://download.oracle.com/otn_software/java/sqldeveloper/sqlcl-#{version}.zip"
  name "sqlcl"
  desc "Oracle SQLcl is the modern command-line interface for the Oracle Database"
  homepage "https://www.oracle.com/database/sqldeveloper/technologies/sqlcl/"

  livecheck do
    url "https://www.oracle.com/database/sqldeveloper/technologies/sqlcl/download/"
    regex(/href=.*?sqlcl[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  stage_only true

  zap trash: "~/.sqlcl"

  caveats do
    depends_on_java "11+"
    path_environment_variable "#{staged_path}/sqlcl/bin"
  end
end
