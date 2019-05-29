cask 'sqlworkbenchj' do
  version '124'
  sha256 '2173c7f00172bef3fed23e7f57e168a9d156c72c311af032ba469139f80d9fe9'

  url "http://www.sql-workbench.net/Workbench-Build#{version}-Mac.tgz"
  appcast 'http://www.sql-workbench.net/wb_news.xml'
  name 'SQL Workbench/J'
  homepage 'https://www.sql-workbench.net/'

  app 'SQLWorkbenchJ.app'

  caveats do
    depends_on_java
  end
end
