cask "sqlworkbenchj" do
  version "131.3"
  sha256 "3025881c49489fbafd2b796fd1086b173652b943a259b3facbf6349363787f26"

  url "https://www.sql-workbench.eu/Workbench-Build#{version}-Mac-with-optional-libs.tgz"
  name "SQL Workbench/J"
  desc "DBMS-independent SQL query tool"
  homepage "https://www.sql-workbench.eu/"

  livecheck do
    url "https://www.sql-workbench.eu/dev-download.html"
    regex(/Workbench[._-]Build(\d+\.\d+)\.zip/i)
  end

  app "SQLWorkbenchJ.app"

  # No zap stanza required

  caveats do
    depends_on_java "11+"
  end
end
