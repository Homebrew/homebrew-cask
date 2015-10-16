cask :v1 => 'sqlworkbenchj' do
  version '118'
  sha256 '5983eeebec79c781e76d6b5ceb789d2c4a9fcdeb2a93ec333b0cb6cb4a291915'

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
