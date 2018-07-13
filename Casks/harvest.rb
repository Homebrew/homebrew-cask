cask 'harvest' do
  version '2.1.7'
  sha256 '831513173a0bc0dbdb017116d4ae91a06c597c2e0d57e6900cf67b78aa441e8e'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac-time-tracking'

  auto_updates true

  app 'Harvest.app'
end
