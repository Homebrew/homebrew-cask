cask 'navicat-premium-essentials' do
  version '15.0.10'
  sha256 'd4066d145c9b5934f7010e2776059d564d92c4d6453faf1dbe6c38bb0149c1c5'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
