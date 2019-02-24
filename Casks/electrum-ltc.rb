cask 'electrum-ltc' do
  version '3.3.3.1'
  sha256 '1cf0144b01fa42e9f1350e5fd4bd5166981b3725ab281d421d7fa7c448510ee2'

  url "https://electrum-ltc.org/download/electrum-ltc-#{version}.dmg"
  appcast 'https://electrum-ltc.org/'
  name 'Electrum-LTC'
  homepage 'https://electrum-ltc.org/'

  app 'Electrum-LTC.app'
end
