cask "sqlcl" do
  version "21.3.2.287.1503"
  sha256 "96f6b2bacd8811b07f2aa88ef622111a91982914ff87ba19676ffbf66b87dc17"

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
