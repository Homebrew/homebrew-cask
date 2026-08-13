cask "sqlcl" do
  version "26.2.1.222.1617"
  sha256 "ff810954993927836b3049eb7c6404d3da72eb539b2a3f725504f72973672fa3"

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
