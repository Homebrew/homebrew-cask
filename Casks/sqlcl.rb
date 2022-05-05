cask "sqlcl" do
  version "21.4.1.17.1458"
  sha256 "7f77f300f1f3ec15c1d758cacc08f0620562985581573804d01af58a1849921b"

  url "https://download.oracle.com/otn_software/java/sqldeveloper/sqlcl-#{version}.zip"
  name "sqlcl"
  desc "Oracle SQLcl is the modern command-line interface for the Oracle Database"
  homepage "https://www.oracle.com/sqlcl"

  livecheck do
    url "https://www.oracle.com/tools/downloads/sqlcl-downloads.html"
    regex(/href=.*?sqlcl[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  stage_only true

  caveats do
    depends_on_java "8+"
    path_environment_variable "#{staged_path}/sqlcl/bin"
  end
end
