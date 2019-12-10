cask 'navicat-for-mysql' do
  version '15.0.4'
  sha256 '6a0ec2a51804b68010d38a0c48f7415e95f58a6d0800487c3c8e425dbe560ad1'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20MySQL&appLang=en'
  name 'Navicat for MySQL'
  homepage 'https://www.navicat.com/products/navicat-for-mysql'

  app 'Navicat for MySQL.app'
end
