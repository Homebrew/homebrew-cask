cask 'navicat-for-oracle' do
  version '15.0.14'
  sha256 '3ce9d0fe47aaf1a9ba45aaad59eaedbae1d2035791138a26a5ffa6c6fb1acf1e'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
