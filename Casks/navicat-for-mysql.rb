cask 'navicat-for-mysql' do
  version '15.0.14'
  sha256 '983d2a2f831f65f06146cc4c6f1e465944d87ba0d6a022d4667af36f0b3a38a9'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
