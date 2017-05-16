cask 'mpfreaker' do
  version '1.10.1'
  sha256 'cf06c825d88330d406ea6aa96f9ffafef0eccd0c01f20878d6c9a3d939ceaee0'

  url 'http://www.lairware.com/download/MPFreaker.dmg'
  appcast 'http://lwupdate.dyndns.org/mpfreaker.xml',
          checkpoint: 'c839811e5ea38d65f7e00b2918f8f9a622da58863f6a4d36a120e1bc5a67d7dc'
  name 'MPFreaker'
  homepage 'http://www.lairware.com/mpfreaker/'

  app 'MPFreaker.app'
end
