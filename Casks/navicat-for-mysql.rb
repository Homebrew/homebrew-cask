cask 'navicat-for-mysql' do
  version '12.1.27'
  sha256 'ea969a9d837eaf4d79df3df736fdbd70a273ef29e50a58c27b804d940711c28f'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
