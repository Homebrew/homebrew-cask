cask 'harvest' do
  version '1.5.1'
  sha256 '139fed7049713611c52b79b6bb95b0c7ab58f412d57da095887ebd26d2329cc8'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml',
          checkpoint: '98434b7c79b735c13e54d628017ad13bd7209805fcb46a97c913072a136710f6'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac'
  license :gratis

  app 'Harvest.app'
end
