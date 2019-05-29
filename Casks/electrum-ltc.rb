cask 'electrum-ltc' do
  version '3.3.5.1'
  sha256 'c266dae2e694b7ccf943f42ad068d0f188d3d683881c2f2686969f018c393b40'

  url "https://electrum-ltc.org/download/electrum-ltc-#{version}.dmg"
  appcast 'https://electrum-ltc.org/'
  name 'Electrum-LTC'
  homepage 'https://electrum-ltc.org/'

  app 'Electrum-LTC.app'
end
