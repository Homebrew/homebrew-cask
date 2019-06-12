cask 'navicat-for-oracle' do
  version '12.1.23'
  sha256 '5bb7a46a5f3df3e7ee9449fd531bf26eaeb4493319d783d289efe190857317d6'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
