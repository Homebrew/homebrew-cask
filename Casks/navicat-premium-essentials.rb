cask 'navicat-premium-essentials' do
  version '15.0.18'
  sha256 '8ed93cfc9eff32d0e8d75b359549a712b16567ab72b9242e4338309b5fb66c06'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
