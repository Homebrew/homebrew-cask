cask 'navicat-premium' do
  version '12.0.22'
  sha256 '29d17a9a9b9e9c9cbe22042061a5ca0b9e9ae5a1e415e578ce6f42c10ae3ee78'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note',
          checkpoint: 'fb9881edcd61440769099358a213c7175df2cdc925735919851d7661a78a6c94'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
