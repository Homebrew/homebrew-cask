cask 'navicat-premium' do
  version '12.1.10'
  sha256 'b74e4c3c4a66653c344903dbf32bfd0cfd8a4e3a9dec0432de9ac13d669bc283'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
