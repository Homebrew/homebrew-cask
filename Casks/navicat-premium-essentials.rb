cask 'navicat-premium-essentials' do
  version '12.0.5'
  sha256 '52c2d87a6ede4e4c1689a88b44e833d50aa3377827a7bfdfbb113ade7f9c44af'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
