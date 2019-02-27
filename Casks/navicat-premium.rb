cask 'navicat-premium' do
  version '12.1.16'
  sha256 '6950014d505249842999ca0923a6452065f38ec0b4252997fc7d5d5ec7b46efd'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
