cask 'navicat-for-oracle' do
  version '12.1.18'
  sha256 'f44e1d285c6f5a7853b285e523aff4dc4a413d44f4376f15d509e8f16720abd8'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
