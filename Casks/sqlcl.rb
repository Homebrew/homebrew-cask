cask "sqlcl" do
  version "21.3.3.322.1724"
  sha256 "d6eb6e8d59bc48045c34584e906b728bd52f1ce1db1d4987e5e516892fffc121"

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
