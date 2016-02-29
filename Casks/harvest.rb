cask 'harvest' do
  version '1.5.1'
  sha256 '139fed7049713611c52b79b6bb95b0c7ab58f412d57da095887ebd26d2329cc8'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml',
          checkpoint: 'a093ea9fcf58ddd6d8857309beeb7dc884cf1ce676026e0b891dc5faea1d2fee'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac'
  license :gratis

  app 'Harvest.app'
end
