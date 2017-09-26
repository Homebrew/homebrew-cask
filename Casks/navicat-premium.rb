cask 'navicat-premium' do
  version '12.0.14'
  sha256 '368afc85f9412bf4683eedf0ae6336e1acc674e47531c413e54b816426b86afd'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
