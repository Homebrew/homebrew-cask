cask 'navicat-for-oracle' do
  version '15.0.10'
  sha256 '25215fe54888370a17f1217bf658992ac017e29119e69d917dd2377c775f1f24'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
