cask 'navicat-premium' do
  version '12.0.12'
  sha256 '85a8b2a4b3021f83b0f8953db8db42640236936d881303e4f09fa8ee19684755'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
