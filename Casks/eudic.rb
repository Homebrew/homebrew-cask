cask 'eudic' do
  version '3.9.0'
  sha256 'f80e00a705fa095575ef8f05e750d60af9b640dee47825c553f982b7f263fcbe'

  # static.frdic.com was verified as official when first introduced to the cask
  url 'https://static.frdic.com/pkg/eudicmac.dmg'
  appcast 'https://www.eudic.net/update/eudic_mac.xml'
  name 'Eudic'
  name '欧路词典'
  homepage 'https://www.eudic.net/eudic/mac_dictionary.aspx'

  app 'Eudic.app'
end
