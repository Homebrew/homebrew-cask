cask 'mpfreaker' do
  version '1.10.1'
  sha256 'cf06c825d88330d406ea6aa96f9ffafef0eccd0c01f20878d6c9a3d939ceaee0'

  url 'https://www.lairware.com/download/MPFreaker.dmg'
  appcast 'https://lwupdate.dyndns.org/mpfreaker.xml'
  name 'MPFreaker'
  homepage 'https://www.lairware.com/mpfreaker/'

  app 'MPFreaker.app'
end
