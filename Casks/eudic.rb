cask 'eudic' do
  version '3.8.4'
  sha256 'dab7bcdbd725adec0a47f6b22c1c6654933012073aa6e33e6f6a718472baa97e'

  # static.frdic.com was verified as official when first introduced to the cask
  url 'https://static.frdic.com/pkg/eudicmac.dmg'
  appcast 'http://www.eudic.net/update/eudic_mac.xml'
  name 'EuDic'
  name '欧路词典'
  homepage 'https://www.eudic.net/eudic/mac_dictionary.aspx'

  app 'EuDic.app'
end
