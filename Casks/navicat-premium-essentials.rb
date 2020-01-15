cask 'navicat-premium-essentials' do
  version '15.0.6'
  sha256 '10b7b455f01ed4fef51845c4568ff602dbd87092136d12d20e059cf4e01e5cde'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
