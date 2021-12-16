cask "sqlcl" do
  version "21.4.0.348.1716"
  sha256 "22e5dae31ec0a38994f018612c17f939e00e29439e9a2ec6c81974193111395d"

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
