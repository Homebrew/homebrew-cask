cask 'sqlworkbenchj' do
  version '125.1'
  sha256 '06b34fbeef8a3bbf6cca17a922b2be050dc16a6e8900ea8e50d9968dfaa05407'

  url "http://www.sql-workbench.net/Workbench-Build#{version}-Mac.tgz"
  appcast 'http://www.sql-workbench.net/wb_news.xml'
  name 'SQL Workbench/J'
  homepage 'https://www.sql-workbench.net/'

  app 'SQLWorkbenchJ.app'

  caveats do
    depends_on_java
  end
end
