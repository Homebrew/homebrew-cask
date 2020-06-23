cask 'navicat-for-oracle' do
  version '15.0.18'
  sha256 '4b495df852ff7f0b9632453ea42f5177e349dafc234aa7696d11a393e17a9f36'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
