cask 'navicat-premium-essentials' do
  version '15.0.11'
  sha256 'f0f0e3afb96a14a1ae078a8a6f5706240c29b38bc9d72bf9bfd1a9f6f24a74a1'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
