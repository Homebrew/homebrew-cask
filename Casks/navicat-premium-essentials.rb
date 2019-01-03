cask 'navicat-premium-essentials' do
  version '12.1.13'
  sha256 '03f77c20f6b938b8d3c500148f2cf9a7390f112ff7381e9483bc2314ed98123f'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
