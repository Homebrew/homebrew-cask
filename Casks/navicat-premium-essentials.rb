cask 'navicat-premium-essentials' do
  version '15.0.15'
  sha256 'd4f96b65e179c4635cba1a97ab04de34ee29a1f7180f5ebec95bdbea62ecac42'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
