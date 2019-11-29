cask 'navicat-premium-essentials' do
  version '15.0.3'
  sha256 '97df4bb13f485d8a5cc798935d5b582ae67f282110abbc49d5a149edbf793d26'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
