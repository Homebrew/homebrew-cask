cask 'navicat-premium' do
  version '11.2.7'
  sha256 'c17b3ea6ce58f5ecd3dc20fff8eed54d5fd99d7ead0033332e5b73a76f1c16c1'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'http://www.navicat.com/products/navicat-premium'
  license :commercial

  app 'Navicat Premium.app'
end
