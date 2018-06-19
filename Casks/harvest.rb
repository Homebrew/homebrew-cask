cask 'harvest' do
  version '2.1.6'
  sha256 '614318d1ebfea787b1924d2faeb925f3a0f6693fb85de7eebe03a650f1dd493a'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac-time-tracking'

  auto_updates true

  app 'Harvest.app'
end
