cask 'navicat-premium' do
  version '12.0.7'
  sha256 'f9618284898d29e5eafc4fc0636900a74a60c4d95e37382bb48112f56788b3d3'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
