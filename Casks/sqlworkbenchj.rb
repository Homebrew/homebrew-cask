cask 'sqlworkbenchj' do
  version '119'
  sha256 '8565105504e517ca972b4f3c99f4436b13e7a3caaf8f53a97f44a71a7c71efc6'

  url "http://www.sql-workbench.net/archive/Workbench-Build#{version}-MacJava8.tgz"
  name 'SQL Workbench/J'
  homepage 'http://www.sql-workbench.net'

  app 'SQLWorkbenchJ.app'

  caveats do
    depends_on_java
  end
end
