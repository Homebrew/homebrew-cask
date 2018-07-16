cask 'harvest' do
  version '2.1.7'
  sha256 'a1dfc944180736cfff5de4ab1219f528ccbcd6f261df940dc68817f4fddf642b'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac-time-tracking'

  auto_updates true

  app 'Harvest.app'
end
