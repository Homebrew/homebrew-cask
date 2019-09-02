cask 'eudic' do
  version '3.9.1'
  sha256 '3390296afeec426aa324bfd7c4bcc989cb864e43c5fe98ffebec5a91f8c52a18'

  # static.frdic.com was verified as official when first introduced to the cask
  url 'https://static.frdic.com/pkg/eudicmac.dmg'
  appcast 'https://www.eudic.net/update/eudic_mac.xml'
  name 'Eudic'
  name '欧路词典'
  homepage 'https://www.eudic.net/eudic/mac_dictionary.aspx'

  app 'Eudic.app'
end
