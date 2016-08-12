cask 'navicat-premium-essentials' do
  version '11.2.13'
  sha256 'ec738c5a01da5f69a24bc9c72adc08e15b746c2a3c3122035f374f9bf33b139b'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'
  license :commercial

  app 'Navicat Premium Essentials.app'
end
