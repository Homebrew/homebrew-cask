cask 'gitkraken' do
  version '2.0.1'
  sha256 '3abfdff67143ab6137ffea71b22664f4dabb7c4cb2c75639ca8722f4e10a63a2'

  url "https://release.gitkraken.com/darwin/v#{version}.zip"
  appcast 'https://release.gitkraken.com/darwin/RELEASES',
          checkpoint: '4f42e6f35314ccb4d1358287e3bc822b9ffc23e402b9ef764b110876fdac2418'
  name 'GitKraken'
  homepage 'https://www.gitkraken.com/'

  auto_updates true

  app 'GitKraken.app'

  zap delete: [
                '~/Library/Application Support/com.axosoft.gitkraken.ShipIt',
                '~/Library/Application Support/GitKraken',
                '~/Library/Caches/GitKraken',
                '~/Library/Caches/com.axosoft.gitkraken',
                '~/Library/Preferences/com.axosoft.gitkraken.plist',
                '~/Library/Saved Application State/com.axosoft.gitkraken.savedState',
                '~/.gitkraken',
              ]
end
