cask 'sqlworkbenchj' do
  version '125'
  sha256 '9534f115fff372a43ec2ae044d97fca660e3bcfd43552da4cc585f0148e458e1'

  url "https://www.sql-workbench.eu/Workbench-Build#{version}.zip"
  appcast 'https://www.sql-workbench.eu/wb_news.xml'
  name 'SQL Workbench/J'
  homepage 'https://www.sql-workbench.eu/'

  app 'SQLWorkbenchJ.app'

  caveats do
    depends_on_java
  end
end
