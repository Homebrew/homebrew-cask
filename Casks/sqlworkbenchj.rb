cask 'sqlworkbenchj' do
  version '123'
  sha256 'd85c8741f465aa9f8991a8aa5b54d9fce0c7b366c20b25b890776cb217ea838c'

  url "http://www.sql-workbench.net/Workbench-Build#{version}-Mac.tgz"
  appcast 'http://www.sql-workbench.net/wb_news.xml'
  name 'SQL Workbench/J'
  homepage 'https://www.sql-workbench.net/'

  app 'SQLWorkbenchJ.app'

  caveats do
    depends_on_java
  end
end
