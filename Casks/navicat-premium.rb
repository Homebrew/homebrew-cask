cask 'navicat-premium' do
  version '12.0.23'
  sha256 '29d17a9a9b9e9c9cbe22042061a5ca0b9e9ae5a1e415e578ce6f42c10ae3ee78'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note',
          checkpoint: '2f3da54482b2def2a5b368508747475c463bda9a1b5080a8d7da45654e3f7087'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
