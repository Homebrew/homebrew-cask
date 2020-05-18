cask 'navicat-premium-essentials' do
  version '15.0.16'
  sha256 'c9c771ab581d46c677b87cd992a77da64ae4a589b58f2a72daf9045434c33d6a'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
