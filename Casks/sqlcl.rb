cask "sqlcl" do
  version "21.3.1.281.1748"
  sha256 "03774d2725d5649411e36cd23b055c5b935dd17054964934d6d2a054c029018b"

  url "https://download.oracle.com/otn_software/java/sqldeveloper/sqlcl-#{version}.zip"
  name "sqlcl"
  desc "Oracle SQLcl is the modern command-line interface for the Oracle Database"
  homepage "https://www.oracle.com/sqlcl"

  livecheck do
    url "https://www.oracle.com/tools/downloads/sqlcl-downloads.html"
    regex(%r{//download.oracle.com/otn_software/java/sqldeveloper/sqlcl-(\d+(?:\.\d+)+)\.zip}i)
  end

  stage_only true

  caveats do
    depends_on_java "8+"
    path_environment_variable "/usr/local/Caskroom/sqlcl/#{version}/sqlcl/bin"
  end
end
