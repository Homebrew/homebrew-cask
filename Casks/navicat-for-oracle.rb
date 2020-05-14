cask 'navicat-for-oracle' do
  version '15.0.15'
  sha256 'bb4600179de08fa1ff1fff27ee6cc6ae02a43c83e4421424d95acb5422e1f227'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
