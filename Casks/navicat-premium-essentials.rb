cask 'navicat-premium-essentials' do
  version '12.0.25'
  sha256 'ad8bd8feb6da6f7a15542956473e518333fd1a54ff9e550906882c63806b6434'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/en/products/navicat-premium-release-note',
          checkpoint: '17e7f0995176600d97233462e27d87f4a18b8ecb1ab85be979d4af4e8f7dd74c'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
