cask "sqlcl" do
  version "26.3.0.260.1620"
  sha256 "eb0dca2becc30e9aa1c700ae71e5df6efde8a33d098d7d23405b6558bbb81a81"

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
