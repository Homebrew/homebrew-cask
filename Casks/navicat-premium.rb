cask 'navicat-premium' do
  version '12.1.7'
  sha256 'a1605831ad4128d416d6f1b28d6006ccdcb3472af841bc8bed2c8b94d2f2eace'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
