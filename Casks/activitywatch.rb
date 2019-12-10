cask 'activitywatch' do
  version '0.8.3'
  sha256 'adea375f0eb2dcf27dbd5b1707ff002f230663dd425664006f7e82427229768e'

  # github.com/ActivityWatch/activitywatch was verified as official when first introduced to the cask
  url "https://github.com/ActivityWatch/activitywatch/releases/download/v#{version}/activitywatch-v#{version}-macos-x86_64.zip"
  appcast 'https://github.com/ActivityWatch/activitywatch/releases.atom'
  name 'ActivityWatch'
  homepage 'https://activitywatch.net/'

  binary 'activitywatch/aw-qt'

  zap trash: '~/Library/Application Support/activitywatch'
end
