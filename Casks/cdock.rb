cask :v1 => 'cdock' do
  version '4.2'
  sha256 '586f1a8972e12b4d71439ef915eca1396d915e28efbcee66ce84bee921aeb0ad'

  url "https://downloads.sourceforge.net/project/cdock/cDock/cDock_v#{version}.zip"
  homepage 'http://sourceforge.net/projects/cdock'
  license :oss

  app 'cDock.app'

  caveats <<-EOS.undent
    #{token} requires easysimbl, available via

      brew cask install easysimbl
  EOS
end
