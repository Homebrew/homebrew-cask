cask 'navicat-premium-essentials' do
  version '12.0.7'
  sha256 '8b8e3790bf2c716f9e9d0296abce0f5fe5a922577bb85b5c2ab68e11df74b291'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
