cask 'navicat-for-oracle' do
  version '12.1.16'
  sha256 'e3cd088790d29e9b8187e6050a5b2a2a499f9d521d81bcf18fad14e4b932fc64'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
