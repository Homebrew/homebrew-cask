cask 'sqlworkbenchj' do
  version '122'
  sha256 'e8c213fbab38116117aafa8b16ad3909117a67e0007d64d6c4acf97c712ad0c2'

  url "http://www.sql-workbench.net/Workbench-Build#{version}-Mac.tgz"
  appcast 'http://www.sql-workbench.net/wb_news.xml',
          checkpoint: 'be4915770cb90aaf3b8b7e055edea9263dda55e7eb87b88527a7d500f89d6dc8'
  name 'SQL Workbench/J'
  homepage 'http://www.sql-workbench.net/'

  app 'SQLWorkbenchJ.app'

  caveats do
    depends_on_java
  end
end
