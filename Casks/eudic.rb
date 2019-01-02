cask 'eudic' do
  version '3.8.7'
  sha256 '514215f3c3832e3ae0167e25769fcfc7044e1a322da363ab203094ad08f7f68b'

  # static.frdic.com was verified as official when first introduced to the cask
  url 'https://static.frdic.com/pkg/eudicmac.dmg'
  appcast 'https://www.eudic.net/update/eudic_mac.xml'
  name 'Eudic'
  name '欧路词典'
  homepage 'https://www.eudic.net/eudic/mac_dictionary.aspx'

  app 'Eudic.app'
end
