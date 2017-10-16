cask 'navicat-premium' do
  version '12.0.15'
  sha256 '60f9a1d21ab55bf22eee1bcf6a86e9f8754e998e5de6437e727ddfb0a119cace'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
