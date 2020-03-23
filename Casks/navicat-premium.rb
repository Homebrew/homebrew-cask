cask 'navicat-premium' do
  version '15.0.12'
  sha256 'ffaecaa278ea3cc6ffe6c78cfce4ca610f055dadf8f129c13a8c916a87296dc2'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium&appLang=en'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
