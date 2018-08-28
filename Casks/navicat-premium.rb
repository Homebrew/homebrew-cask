cask 'navicat-premium' do
  version '12.1.5'
  sha256 'f2bc8c6773a30685983a47645dbacf326395829590e14d6c309cfbb520d995c1'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
