cask 'electrum-ltc' do
  version '3.3.4.1'
  sha256 'bfc082b692905fe279b5666adf2fe62ba83652d4b6162e539f7a81f651d70bfe'

  url "https://electrum-ltc.org/download/electrum-ltc-#{version}.dmg"
  appcast 'https://electrum-ltc.org/'
  name 'Electrum-LTC'
  homepage 'https://electrum-ltc.org/'

  app 'Electrum-LTC.app'
end
