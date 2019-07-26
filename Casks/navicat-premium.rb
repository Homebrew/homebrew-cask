cask 'navicat-premium' do
  version '12.1.24'
  sha256 'd814f4402e731c7f969dba4db4369a6ac6f5b96137fe0eda51131d6280a69033'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
