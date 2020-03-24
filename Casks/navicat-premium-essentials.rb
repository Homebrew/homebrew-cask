cask 'navicat-premium-essentials' do
  version '15.0.12'
  sha256 'feab820b0c8eaef02cc9f6f3321650eeae41cc3f052eb061d9c80cbea2f42fc9'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
