cask 'harvest' do
  version '2.1.10'
  sha256 '4cfd6f30dc20e0b4467d87d736bb6896f703644e446c549e0a34ef35463e5652'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac-time-tracking'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Harvest.app'
end
