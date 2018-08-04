cask 'navicat-premium-essentials' do
  version '12.1.4'
  sha256 'bd6a9fe8feb51437d55a0a6ab5eaa91554440a41c1c25b81d89ccdc496665dd0'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
