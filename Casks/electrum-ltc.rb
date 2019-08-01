cask 'electrum-ltc' do
  version '3.3.6.1'
  sha256 '64700719b5e7cc3b346ca07361a3175e55961ff76ff7773942d1e5df9667dc0a'

  url "https://electrum-ltc.org/download/electrum-ltc-#{version}.dmg"
  appcast 'https://electrum-ltc.org/'
  name 'Electrum-LTC'
  homepage 'https://electrum-ltc.org/'

  app 'Electrum-LTC.app'
end
