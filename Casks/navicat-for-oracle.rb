cask 'navicat-for-oracle' do
  version '12.1.25'
  sha256 'b0a51aa78ba2294ffcce1b5e741b5676efe2b50a4b9570a8abc56ebb5f08c15d'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
