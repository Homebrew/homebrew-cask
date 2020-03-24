cask 'navicat-for-mysql' do
  version '15.0.12'
  sha256 'fba931fe5e0843cdaa4873e165797e1eb2230b6c644c8c8a3fa8300d78a5e742'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
