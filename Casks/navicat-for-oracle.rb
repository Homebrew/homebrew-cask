cask 'navicat-for-oracle' do
  version '12.1.12'
  sha256 '63241b27dccb06ca54c0df5a843e8223ca817cfc33f2788b7b3c70ccc65af47d'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20for%20Oracle&appLang=en'
  name 'Navicat for Oracle'
  homepage 'https://www.navicat.com/products/navicat-for-oracle'

  app 'Navicat for Oracle.app'
end
