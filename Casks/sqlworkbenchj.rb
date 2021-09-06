cask "sqlworkbenchj" do
  version "127"
  sha256 "2173c7f00172bef3fed23e7f57e168a9d156c72c311af032ba469139f80d9fe9"

  url "https://www.sql-workbench.eu/Workbench-Build#{version}-Mac.tgz"
  name "SQL Workbench/J"
  homepage "https://www.sql-workbench.eu/"

  livecheck do
    url "https://www.sql-workbench.eu/downloads.html"
    regex(/Current\s+stable\s+release:\s+Build\s+(\d+)/i)
  end

  app "SQLWorkbenchJ.app"

  caveats do
    depends_on_java
  end
end
