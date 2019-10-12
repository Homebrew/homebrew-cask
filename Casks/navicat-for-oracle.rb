cask 'navicat-for-oracle' do
  version '12.1.26'
  sha256 '665a00f7be7963be9a194008f8212fcd4cf47a0ef31da7d8f58f7ac4f8948e01'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
