cask 'navicat-premium-essentials' do
  version '12.1.27'
  sha256 '41f15116c7c186c93a93157436e9e1ed48c7d839bfb7447a7974e718ae498b5d'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
