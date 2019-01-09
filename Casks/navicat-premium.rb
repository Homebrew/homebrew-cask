cask 'navicat-premium' do
  version '12.1.13'
  sha256 '5aa6d299cd74d5aa36aea67f6da845f2ee9151f38d20aa4bbe5351864bd3a183'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
