cask 'navicat-premium-essentials' do
  version '12.1.25'
  sha256 '35bfe7013426b350a2a3b98e959fc728d3c879cc6915799676119dd0ebbd5709'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
