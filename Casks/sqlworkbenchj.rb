cask "sqlworkbenchj" do
  version "126"
  sha256 "1ae9bfbde5642aab3a5fe0372be92d34293a59edfc74a743b1a4318015be5cb9"

  url "https://www.sql-workbench.eu/Workbench-Build#{version}-with-optional-libs.zip"
  appcast "https://www.sql-workbench.eu/wb_news.xml"
  name "SQL Workbench/J"
  homepage "https://www.sql-workbench.eu/"

  app "SQLWorkbenchJ.app"

  caveats do
    depends_on_java
  end
end
