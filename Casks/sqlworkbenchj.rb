cask 'sqlworkbenchj' do
  version '121'
  sha256 'ef7033fd865265092d448adc19002ca99f5b1487a9722b96e3174d901c389840'

  url "http://www.sql-workbench.net/archive/Workbench-Build#{version}-MacJava8.tgz"
  appcast 'http://www.sql-workbench.net/wb_news.xml',
          checkpoint: 'bb25ae8f66a46735b9e7bd23dc21a6d6e6a386ec8e940549080db3b02e74753b'
  name 'SQL Workbench/J'
  homepage 'http://www.sql-workbench.net/'

  app 'SQLWorkbenchJ.app'

  caveats do
    depends_on_java
  end
end
