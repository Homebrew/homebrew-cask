cask 'navicat-premium' do
  version '12.0.2'
  sha256 'cb3bb9314b2580712967179acc12ed2823181db79ae33f483781d23f47bc821a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
