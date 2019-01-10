cask 'navicat-for-oracle' do
  version '12.1.15'
  sha256 '0bba3168ea5bcd93a755ad39b10df5d409bece185c8f9d5b639493602a282ec7'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
