cask 'navicat-premium' do
  version '12.1.3'
  sha256 'f05d5dddd89b0700d25966fcccae7db79392537f2ffa9576755d6c65532d7dc3'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
