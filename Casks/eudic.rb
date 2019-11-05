cask 'eudic' do
  version '3.9.2'
  sha256 '6a8cf266a1fe0e94f33f93c2c37970057dd3075a1993f1a2161089ca92051803'

  # static.frdic.com was verified as official when first introduced to the cask
  url 'https://static.frdic.com/pkg/eudicmac.dmg'
  appcast 'https://www.eudic.net/update/eudic_mac.xml'
  name 'Eudic'
  name '欧路词典'
  homepage 'https://www.eudic.net/eudic/mac_dictionary.aspx'

  app 'Eudic.app'
end
