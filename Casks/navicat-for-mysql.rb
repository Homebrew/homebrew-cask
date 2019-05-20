cask 'navicat-for-mysql' do
  version '12.1.20'
  sha256 '7b68e6f40e6f20e4c5bc94e9d6a963c167182943a2e9892b20b682852dfa71a5'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
