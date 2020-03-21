cask 'activitywatch' do
  version '0.9.0'
  sha256 '982bc85665e0229c4bace4c5b23d3163792b350d9344010dc672e889d412948d'

  # github.com/ActivityWatch/activitywatch was verified as official when first introduced to the cask
  url "https://github.com/ActivityWatch/activitywatch/releases/download/v#{version}/activitywatch-v#{version}-macos-x86_64.dmg"
  appcast 'https://github.com/ActivityWatch/activitywatch/releases.atom'
  name 'ActivityWatch'
  homepage 'https://activitywatch.net/'

  app 'ActivityWatch.app'

  zap trash: '~/Library/Application Support/activitywatch'
end
