cask 'sqlworkbenchj' do
  version '125.5'
  sha256 'bbb2b62ba934ee0d2d0cba0f912256a62e6e91d808035433c81d27d9a3b7593e'

  url "https://www.sql-workbench.eu/Workbench-Build#{version}-Mac.tgz"
  appcast 'https://www.sql-workbench.eu/wb_news.xml'
  name 'SQL Workbench/J'
  homepage 'https://www.sql-workbench.eu/'

  app 'SQLWorkbenchJ.app'

  caveats do
    depends_on_java
  end
end
