cask 'harvest' do
  version '2.1.12'
  sha256 '6345cb40c55ca6cf51d5086b511fc976836e5d1dbb49e9f71f5b15284aa91bbd'

  url "https://www.getharvest.com/harvest/mac/Harvest.#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac-time-tracking'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Harvest.app'
end
