cask :v1 => 'cdock' do
  version '4.2'
  sha256 '586f1a8972e12b4d71439ef915eca1396d915e28efbcee66ce84bee921aeb0ad'

  url "http://downloads.sourceforge.net/project/cdock/cDock/cDock_v#{version}.zip"
  name 'cDock'
  homepage 'http://sourceforge.net/projects/cdock/'
  license :oss

  app 'cDock.app'

  depends_on :cask => 'easysimbl'
end
