cask 'spaceradar' do
  version '4.4.0'
  sha256 'de93d62bb2845fa815b7010a5f42960ce849487489370fae3636177944b083ff'

  url "https://github.com/zz85/space-radar/releases/download/v#{version}/SpaceRadar-darwin-x64.zip"
  appcast 'https://github.com/zz85/space-radar/releases.atom',
          checkpoint: '86c8908866031b0ef56b4a4d57005e5f267ccb616c678803a10e14a818c5ba15'
  name 'SpaceRadar'
  homepage 'https://github.com/zz85/space-radar'

  app 'SpaceRadar.app'

  uninstall quit: 'com.electron.spaceradar'

  zap delete: [
                '~/Library/Application Support/space-radar',
                '~/Library/Caches/space-radar',
                '~/Library/Preferences/com.electron.spaceradar.plist',
                '~/Library/Saved Application State/com.electron.spaceradar.savedState',
              ]
end
