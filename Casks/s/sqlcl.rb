cask "sqlcl" do
  version "26.3.1.301.1413"
  sha256 "f3f188ae06f17eb181f77ae0be54f2ae8c165e52056a7cb7401a974cace9e5f2"

  url "https://download.oracle.com/otn_software/java/sqldeveloper/sqlcl-#{version}.zip"
  name "sqlcl"
  desc "Oracle SQLcl is the modern command-line interface for the Oracle Database"
  homepage "https://www.oracle.com/database/sqldeveloper/technologies/sqlcl/"

  livecheck do
    url "https://www.oracle.com/database/sqldeveloper/technologies/sqlcl/download/"
    regex(/href=.*?sqlcl[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  binary "sqlcl/bin/sql", target: "sqlcl"

  zap trash: "~/.sqlcl"

  caveats do
    depends_on_java "11+"
  end
end
