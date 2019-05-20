cask 'navicat-for-oracle' do
  version '12.1.20'
  sha256 '1d9f222968ff60c40472d18a4fea5aef8ca16b711a725bdb1fa66f50ca53d00f'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
