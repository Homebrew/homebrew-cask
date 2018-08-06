cask 'navicat-premium' do
  version '12.1.5'
  sha256 'd332a0f7519251972abdf0663f416be0adba2d208b499137c2c8604f5a5b3dd0'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
