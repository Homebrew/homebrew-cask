cask 'navicat-premium-essentials' do
  version '15.0.8'
  sha256 '99717f96d5b33bf234888f1f58fb7ac3a26c0cc4b545b1bf9a31a9d83c848f3e'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
