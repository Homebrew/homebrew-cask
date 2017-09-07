cask 'navicat-premium-essentials' do
  version '12.0.12'
  sha256 'e2de5a6e25b4ae1762f54b6a666665920d48db54d165a04647cf5446abf4a673'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
