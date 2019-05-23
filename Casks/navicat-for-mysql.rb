cask 'navicat-for-mysql' do
  version '12.1.20'
  sha256 '6eba8cdffa60948b5ddbee6ac8441c5b892da8a0fc6346732358a6fb80d8b6bd'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
