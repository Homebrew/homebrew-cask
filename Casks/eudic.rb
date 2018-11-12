cask 'eudic' do
  version :latest
  sha256 :no_check

  # static.frdic.com was verified as official when first introduced to the cask
  url 'https://static.frdic.com/pkg/eudicmac.dmg'
  appcast 'http://www.eudic.net/update/eudic_mac.xml'
  name 'EuDic'
  name '欧路词典'
  homepage 'https://www.eudic.net/eudic/mac_dictionary.aspx'

  app 'EuDic.app'
end
