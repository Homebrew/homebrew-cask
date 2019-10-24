cask 'eudic' do
  version '3.9.2'
  sha256 '8b4e9f5e4e0c58649d759be2289cdf9a77e77a3cfd91e4e6375e8b2139cb4f04'

  # static.frdic.com was verified as official when first introduced to the cask
  url 'https://static.frdic.com/pkg/eudicmac.dmg'
  appcast 'https://www.eudic.net/update/eudic_mac.xml'
  name 'Eudic'
  name '欧路词典'
  homepage 'https://www.eudic.net/eudic/mac_dictionary.aspx'

  app 'Eudic.app'
end
