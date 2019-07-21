cask 'activitywatch' do
  version '0.8.0b8'
  sha256 '16b7a7499f89ad0f63d9dfd2649984492087309dbe5ac797c21f170c3324a018'

  # github.com/ActivityWatch/activitywatch was verified as official when first introduced to the cask
  url "https://github.com/ActivityWatch/activitywatch/releases/download/v#{version}/activitywatch-v#{version}-macos-x86_64.zip"
  appcast 'https://github.com/ActivityWatch/activitywatch/releases.atom'
  name 'ActivityWatch'
  homepage 'https://activitywatch.net/'

  binary 'activitywatch/aw-qt'

  zap trash: '~/Library/Application Support/activitywatch'
end
