cask "sqlworkbenchj" do
  version "124"
  sha256 "2173c7f00172bef3fed23e7f57e168a9d156c72c311af032ba469139f80d9fe9"

  url "https://www.sql-workbench.eu/archive/Workbench-Build#{version}-Mac.tgz"
  name "SQL Workbench/J"
  desc "DBMS-independent SQL query tool"
  homepage "https://www.sql-workbench.eu/"

  livecheck do
    url "https://www.sql-workbench.eu/download-archive.html"
    regex(/Workbench[._-]Build(\d+)[._-]Mac\.t/i)
  end

  app "SQLWorkbenchJ.app"

  caveats do
    depends_on_java "11+"
  end
end
