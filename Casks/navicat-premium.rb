cask 'navicat-premium' do
  version '12.0.5'
  sha256 '042ccaa80291eb6b2cc3889a0241a7c90260352696d0f249b94f9a33d9e8dcd4'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
