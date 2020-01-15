cask 'navicat-premium' do
  version '15.0.7'
  sha256 '21e5dada2faaa061a148c4134f7e114093344222a6fcc9f35c240e636b30c704'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
