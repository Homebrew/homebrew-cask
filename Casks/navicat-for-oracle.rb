cask 'navicat-for-oracle' do
  version '12.1.22'
  sha256 '1bcc9f2e21b0563fbc0bae115f38083588c2797668f618dd0e954e6c27c5caaf'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
