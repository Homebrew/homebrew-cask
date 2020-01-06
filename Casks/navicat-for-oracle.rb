cask 'navicat-for-oracle' do
  version '15.0.7'
  sha256 'c233de8b6b952667766ee26fecbdfa0f26652ddb69cbfbd6a61290f9aca02ea0'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
