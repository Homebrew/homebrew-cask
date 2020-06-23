cask 'navicat-for-mysql' do
  version '15.0.18'
  sha256 'df13b80d8eb64faa94e29c88a1d46950b76de11a82810ec63e890afeee777968'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
