cask 'navicat-premium' do
  version '11.2.14'
  sha256 '84d82874416a24918dd361bb4afe468669d38abba46d3b0d9879e1dbcfbf2bc6'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
