cask 'navicat-for-oracle' do
  version '15.0.16'
  sha256 '5831ed085d30000c2280375f61451b6204e101fb3077435ed579d91571c3fab3'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
