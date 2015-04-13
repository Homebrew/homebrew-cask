cask :v1 => 'sqlworkbenchj' do
  version '117'
  sha256 '3d9698c9a0c8e939789e3407c55dfbd963e73cd430e5caf8d66627abae5a14d7'

  url "http://www.sql-workbench.net/Workbench-Build#{version}-MacJava7.tgz"
  name 'SQL Workbench/J'
  homepage 'http://www.sql-workbench.net'
  license :apache

  app 'SQLWorkbenchJ.app'

  caveats <<-EOS.undent
    #{token} requires Java. You can install the latest version with
      brew cask install java
  EOS
end
