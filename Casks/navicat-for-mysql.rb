cask 'navicat-for-mysql' do
  version '15.0.8'
  sha256 'fb27435d994cf76dbfe47f37d244f64a4b7d17bf7acc34685414b171f43d53f1'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
