cask 'navicat-premium' do
  version '12.0.9'
  sha256 '3c940b7855a29260f19b4fe51f2bc16a78295900631259fd639ad1ebbe972167'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
