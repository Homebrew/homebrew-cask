cask 'eudic' do
  version '3.9.5,2019-12-20'
  sha256 '2b52374dffa9defcd7702605dacd764db06b261e50e660e2d53266e23dca8165'

  # static.frdic.com was verified as official when first introduced to the cask
  url "https://static.frdic.com/pkg/eudicmac.dmg?v=#{version.after_comma}"
  appcast 'https://www.eudic.net/update/eudic_mac.xml'
  name 'Eudic'
  name '欧路词典'
  homepage 'https://www.eudic.net/v4/en/app/eudic'

  app 'Eudic.app'
end
