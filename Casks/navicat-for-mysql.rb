cask 'navicat-for-mysql' do
  version '15.0.17'
  sha256 '8e94613bea8dc1c55cc06babbee6adba98ab0429acd082d1fb23109df830ea54'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
