cask 'sqlworkbenchj' do
  version '124.1'
  sha256 '27682b2defaea60d4e6af5919202f486d1f3ee2d7c434e4e40f85dc020edae66'

  url "http://www.sql-workbench.net/Workbench-Build#{version}-Mac.tgz"
  appcast 'http://www.sql-workbench.net/wb_news.xml'
  name 'SQL Workbench/J'
  homepage 'https://www.sql-workbench.net/'

  app 'SQLWorkbenchJ.app'

  caveats do
    depends_on_java
  end
end
