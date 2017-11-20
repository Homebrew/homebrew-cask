cask 'spaceradar' do
  version '4.4.0'
  sha256 'de93d62bb2845fa815b7010a5f42960ce849487489370fae3636177944b083ff'

  url "https://github.com/zz85/space-radar/releases/download/v#{version}/SpaceRadar-darwin-x64.zip"
  appcast 'https://github.com/zz85/space-radar/releases.atom',
          checkpoint: '6d94539a86bf2034da873c6d4d021b80746fb794ed5c387eb0e672829edd2d78'
  name 'SpaceRadar'
  homepage 'https://github.com/zz85/space-radar'

  app 'SpaceRadar.app'

  uninstall quit: 'com.electron.spaceradar'

  zap trash: [
               '~/Library/Application Support/space-radar',
               '~/Library/Caches/space-radar',
               '~/Library/Preferences/com.electron.spaceradar.plist',
               '~/Library/Saved Application State/com.electron.spaceradar.savedState',
             ]
end
