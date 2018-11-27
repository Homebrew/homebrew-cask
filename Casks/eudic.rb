cask 'eudic' do
  version '3.8.5'
  sha256 'e9e461948bc33c49c0ced452efb24354b9c30eb7541207205e3ca710c5154382'

  # static.frdic.com was verified as official when first introduced to the cask
  url 'https://static.frdic.com/pkg/eudicmac.dmg'
  appcast 'https://www.eudic.net/update/eudic_mac.xml'
  name 'EuDic'
  name '欧路词典'
  homepage 'https://www.eudic.net/eudic/mac_dictionary.aspx'

  app 'EuDic.app'
end
