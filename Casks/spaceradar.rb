cask 'spaceradar' do
  version '5.1.0'
  sha256 'af9fdbaf96658cb990f45a76183ca1ce91184d5a91e78676aa57095c9906a06d'

  url "https://github.com/zz85/space-radar/releases/download/v#{version}/SpaceRadar-darwin-x64.zip"
  appcast 'https://github.com/zz85/space-radar/releases.atom',
          checkpoint: '76c533d88289efd1a9bb889e06ef733c092bb8c50483322ee2b60040c9f20b8d'
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
