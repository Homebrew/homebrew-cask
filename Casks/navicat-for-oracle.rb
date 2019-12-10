cask 'navicat-for-oracle' do
  version '15.0.4'
  sha256 '93853defa51d98b659de55a0f313b8034399fd2ad81a9bafabd0704aae63c5ad'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
