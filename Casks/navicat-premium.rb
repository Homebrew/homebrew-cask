cask 'navicat-premium' do
  version '12.0.17'
  sha256 'e6065e2520cc7f70e90095c3dccb9ca299b9b5c5a06acba77a74146577d16abb'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
