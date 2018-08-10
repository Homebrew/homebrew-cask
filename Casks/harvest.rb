cask 'harvest' do
  version '2.1.8'
  sha256 'e0205cb5831ef9e3db3bbd7ab1dcc44210e3e6ca35011b646fa52e7bccf5cb2b'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac-time-tracking'

  auto_updates true

  app 'Harvest.app'
end
