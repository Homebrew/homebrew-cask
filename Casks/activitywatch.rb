cask 'activitywatch' do
  version '0.9.0'
  sha256 '4f55d3b41abfd29f91fc810e5512b538ab63f97b4807fc66bcf09ea25b7dcc24'

  # github.com/ActivityWatch/activitywatch was verified as official when first introduced to the cask
  url "https://github.com/ActivityWatch/activitywatch/releases/download/v#{version}/activitywatch-v#{version}-macos-x86_64.zip"
  appcast 'https://github.com/ActivityWatch/activitywatch/releases.atom'
  name 'ActivityWatch'
  homepage 'https://activitywatch.net/'

  binary 'activitywatch/aw-qt'

  zap trash: '~/Library/Application Support/activitywatch'
end
