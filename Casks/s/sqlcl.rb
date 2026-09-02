cask "sqlcl" do
  version "26.2.2.233.1901"
  sha256 "17f89fddf69722f37d7bde0718e66490647b25b295bf52fba92ba0ad042fa256"

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
