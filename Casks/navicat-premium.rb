cask 'navicat-premium' do
  version '12.0.11'
  sha256 'ae8155baa14307aab47870b0746823b27e49bc68d5e07ab251b33a9c58d00e4c'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
