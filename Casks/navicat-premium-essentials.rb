cask 'navicat-premium-essentials' do
  version '15.0.14'
  sha256 'e093a3ef61310b5161e62d8e97c7c86a54d72025e5a1498cd3c15ccc568faf3f'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
