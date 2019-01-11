cask 'eudic' do
  version '3.8.8'
  sha256 'a6e4dc4173700e5c08593a20c750d8efd6e996a31276548d7dc0a7664cf835dc'

  # static.frdic.com was verified as official when first introduced to the cask
  url 'https://static.frdic.com/pkg/eudicmac.dmg'
  appcast 'https://www.eudic.net/update/eudic_mac.xml'
  name 'Eudic'
  name '欧路词典'
  homepage 'https://www.eudic.net/eudic/mac_dictionary.aspx'

  app 'Eudic.app'
end
