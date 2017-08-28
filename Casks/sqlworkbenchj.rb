cask 'sqlworkbenchj' do
  version '122'
  sha256 'e8c213fbab38116117aafa8b16ad3909117a67e0007d64d6c4acf97c712ad0c2'

  url "http://www.sql-workbench.net/Workbench-Build#{version}-Mac.tgz"
  appcast 'http://www.sql-workbench.net/wb_news.xml',
          checkpoint: '4f827732f42157be2e184039f03b4988bcab7da975e52287430eec9738dfd5ca'
  name 'SQL Workbench/J'
  homepage 'https://www.sql-workbench.net/'

  app 'SQLWorkbenchJ.app'

  caveats do
    depends_on_java
  end
end
