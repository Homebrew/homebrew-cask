cask 'navicat-premium' do
  version '12.0.13'
  sha256 'e474829bed4cd4428cf5f10167081aa385eb54462516080719f1a6c9b01db960'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
