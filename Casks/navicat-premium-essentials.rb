cask 'navicat-premium-essentials' do
  version '15.0.4'
  sha256 'eaea2d9bf21ecf14be3efcb86fb939051ce3689fa6fb4eed293322c1e7f45ba4'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
