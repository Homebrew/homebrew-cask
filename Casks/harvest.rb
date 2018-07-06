cask 'harvest' do
  version '2.1.7'
  sha256 'cf07dccf7db0273cb2661bf202813f3a93a1a3d321447eebee5cf599acc9797d'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac-time-tracking'

  auto_updates true

  app 'Harvest.app'
end
