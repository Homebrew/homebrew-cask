cask 'navicat-premium' do
  version '12.1.4'
  sha256 '5284d81fc3d46bdadf7b96b2121a31245237eb0cabc8b38b5ed0384d2f6eaaf2'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
