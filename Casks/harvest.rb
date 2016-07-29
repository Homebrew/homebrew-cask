cask 'harvest' do
  version '1.5.1'
  sha256 '139fed7049713611c52b79b6bb95b0c7ab58f412d57da095887ebd26d2329cc8'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml',
          checkpoint: '9c3d1ecd1f3b13864a293b08d9d946d25422124343523c6a4516faaafa72186b'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac'
  license :gratis

  app 'Harvest.app'
end
