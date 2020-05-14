cask 'navicat-for-mysql' do
  version '15.0.15'
  sha256 'afdeade6985bc97c143102a3c7161eb17e6d8411403d07fa469ac077f5ac9773'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
