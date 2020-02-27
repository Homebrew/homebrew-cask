cask 'navicat-for-oracle' do
  version '15.0.11'
  sha256 '72d886e5c9c3f6b5edbfec9d4dfaf11cec27d68127eb46714261b9b5e1370be5'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
