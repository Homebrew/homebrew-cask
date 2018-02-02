cask 'harvest' do
  version :latest
  sha256 :no_check

  url 'https://www.getharvest.com/harvest/mac/Harvest.zip'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac-time-tracking'

  auto_updates true

  app 'Harvest.app'
end
