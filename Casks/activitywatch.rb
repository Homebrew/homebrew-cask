cask 'activitywatch' do
  version '0.8.0b9'
  sha256 '168eba648eae8c2466ecc5e4ad5a476c55f644e3a579642d3f7e559ad7f8a3c1'

  # github.com/ActivityWatch/activitywatch was verified as official when first introduced to the cask
  url "https://github.com/ActivityWatch/activitywatch/releases/download/v#{version}/activitywatch-v#{version}-macos-x86_64.zip"
  appcast 'https://github.com/ActivityWatch/activitywatch/releases.atom'
  name 'ActivityWatch'
  homepage 'https://activitywatch.net/'

  binary 'activitywatch/aw-qt'

  zap trash: '~/Library/Application Support/activitywatch'
end
