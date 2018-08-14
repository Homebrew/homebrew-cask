cask 'harvest' do
  version '2.1.9'
  sha256 '5c1ca460705b7a473d955dffe28a3329707bf196c203b1653667e2a917368023'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac-time-tracking'

  auto_updates true

  app 'Harvest.app'
end
