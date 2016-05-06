cask 'navicat-premium' do
  version '11.2.10'
  sha256 '179ba8a263b9af993a4d86f897e5f6ae25cc68e3870c350c532049125637425f'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'http://www.navicat.com/products/navicat-premium'
  license :commercial

  app 'Navicat Premium.app'
end
