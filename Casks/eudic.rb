cask 'eudic' do
  version '3.8.8'
  sha256 '7aa5beb8b9ee3943b279c07aabdd25329e7ab1040b373a5936d080917d702f9a'

  # static.frdic.com was verified as official when first introduced to the cask
  url 'https://static.frdic.com/pkg/eudicmac.dmg'
  appcast 'https://www.eudic.net/update/eudic_mac.xml'
  name 'Eudic'
  name '欧路词典'
  homepage 'https://www.eudic.net/eudic/mac_dictionary.aspx'

  app 'Eudic.app'
end
