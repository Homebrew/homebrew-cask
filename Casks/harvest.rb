cask 'harvest' do
  version '2.1.3'
  sha256 'e7d70cff4aeb14eed42f27e6229544efbcfb6c36813d0e334cdb2497e3923dac'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml',
          checkpoint: '2c4dd52191c9334361a1e8e282ef8ca8037f12b613ee439072a0f47a139225ec'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac-time-tracking'

  auto_updates true

  app 'Harvest.app'
end
