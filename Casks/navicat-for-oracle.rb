cask 'navicat-for-oracle' do
  version '15.0.17'
  sha256 '239535e560cefeccf48992c51996c5f82358f4f83a6ce94dddda769434ed74eb'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
