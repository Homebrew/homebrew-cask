cask 'navicat-premium' do
  version '11.2.15'
  sha256 '6a3843fb6aa88df52de1e564d07a9ee0b7435831be5ec7e6b306afe2e1badf28'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
