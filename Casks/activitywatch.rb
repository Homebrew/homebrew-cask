cask 'activitywatch' do
  version '0.8.4'
  sha256 '1cb7601991f33ed2eaef2d33b91f2e54c1f0024bc57f61a4000877154516c11d'

  # github.com/ActivityWatch/activitywatch was verified as official when first introduced to the cask
  url "https://github.com/ActivityWatch/activitywatch/releases/download/v#{version}/activitywatch-v#{version}-macos-x86_64.zip"
  appcast 'https://github.com/ActivityWatch/activitywatch/releases.atom'
  name 'ActivityWatch'
  homepage 'https://activitywatch.net/'

  binary 'activitywatch/aw-qt'

  zap trash: '~/Library/Application Support/activitywatch'
end
