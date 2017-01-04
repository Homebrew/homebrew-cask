cask 'navicat-premium' do
  version '11.2.16'
  sha256 '53210a7f61fc068cd871d71c3154c8199719e33fdf750ef1e35bd35f20a06a22'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
