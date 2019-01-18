cask 'eudic' do
  version '3.8.9'
  sha256 '918085753c4999a3218522d747ee12e975d995f7a36e1be960e3991a92e3da60'

  # static.frdic.com was verified as official when first introduced to the cask
  url 'https://static.frdic.com/pkg/eudicmac.dmg'
  appcast 'https://www.eudic.net/update/eudic_mac.xml'
  name 'Eudic'
  name '欧路词典'
  homepage 'https://www.eudic.net/eudic/mac_dictionary.aspx'

  app 'Eudic.app'
end
