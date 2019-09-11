cask 'navicat-for-oracle' do
  version '12.1.24'
  sha256 'de862a4fc6564ab46b88eaa73914794186a999d1e39f8d7866bf78714cc672ec'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
