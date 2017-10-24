cask 'harvest' do
  version '2.1.2'
  sha256 '43d61906cf1752303885be2e16d9133c5eaeb3f071712673def6663b5b8e5247'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml',
          checkpoint: '2c4dd52191c9334361a1e8e282ef8ca8037f12b613ee439072a0f47a139225ec'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac-time-tracking'

  app 'Harvest.app'
end
