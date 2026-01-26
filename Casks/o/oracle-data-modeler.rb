cask "oracle-data-modeler" do
  arch arm: "aarch64", intel: "x64"

  version "24.3.1.351.0831"
  sha256 arm:   "de5b9b79aa197499314d215d94edf496843076b3e9d95192380538407765d9bc",
         intel: "2bbbabefeab870c51bcaf27b47beaf9a40ac236c345fb4ff2a72192fa5c633d1"

  url "https://download.oracle.com/otn_software/java/sqldeveloper/datamodeler-#{version}-macos-#{arch}.app.zip"
  name "OracleDataModeler"
  desc "Graphical tool for data modeling tasks"
  homepage "https://www.oracle.com/database/sqldeveloper/technologies/sql-data-modeler/"

  livecheck do
    url "https://www.oracle.com/database/sqldeveloper/technologies/sql-data-modeler/download/"
    regex(%r{href=.*?/datamodeler-(\d+(?:\.\d+)*)-macos-aarch64\.app\.zip}i)
    strategy :page_match
  end

  app "OracleDataModeler.app"

  # No zap stanza required

  caveats do
    depends_on_java "17+"
  end
end
