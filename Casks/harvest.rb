cask 'harvest' do
  version '2.1.13'
  sha256 'fb32ac6bf6c58e0edc514eeab38dcd60792af3fbf1064d62591cb1b032bcffe3'

  url "https://www.getharvest.com//harvest/mac/Harvest-#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac-time-tracking'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Harvest.app'
end
