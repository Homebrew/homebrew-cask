cask 'navicat-premium' do
  version '11.2.15'
  sha256 'a4405577128c2e7a0a2ead094fda29003017c90170679a3093e48385e6d02ed1'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
