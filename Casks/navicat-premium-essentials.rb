cask 'navicat-premium-essentials' do
  version '12.0.22'
  sha256 '1ea325d1d0abdd658b30b01b83f48824742a7bac913086ed1772d72157bdcac3'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note',
          checkpoint: 'fb9881edcd61440769099358a213c7175df2cdc925735919851d7661a78a6c94'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
