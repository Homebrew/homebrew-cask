cask 'navicat-premium-essentials' do
  version '12.1.8'
  sha256 '0107da6096275ec8fcf2a516f8ce32df330688b979dfeb241249947d1aedfcef'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
