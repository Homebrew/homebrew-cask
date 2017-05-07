cask 'navicat-premium' do
  version '11.2.18'
  sha256 'dbe0091fc7241b6b57997ab317a555742739a15f4245c0f8044e5d83ca872687'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
