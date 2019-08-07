cask 'navicat-premium-essentials' do
  version '12.1.24'
  sha256 '532daca7b7dcaf9449501e858986d1da55263b9178b19aa317fbb4640270d1ce'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
