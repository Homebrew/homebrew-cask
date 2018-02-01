cask 'navicat-premium' do
  version '12.0.22'
  sha256 '60c6be159528f720b8d6051dd935083d956234be4b8c14539e8bc6611972f54a'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note',
          checkpoint: 'fb9881edcd61440769099358a213c7175df2cdc925735919851d7661a78a6c94'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
