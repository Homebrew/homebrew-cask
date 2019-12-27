cask 'navicat-for-oracle' do
  version '15.0.6'
  sha256 'e0345b757bb0262360dbe0504632a6dc79da20f50d978f23735687c25dbdc3a2'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
