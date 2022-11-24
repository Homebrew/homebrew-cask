cask "sqlcl" do
  version "22.3.1.285.1825"
  sha256 :no_check

  url "https://download.oracle.com/otn_software/java/sqldeveloper/sqlcl-latest.zip"
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
