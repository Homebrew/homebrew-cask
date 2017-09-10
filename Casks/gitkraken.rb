cask 'gitkraken' do
  version '3.0.0'
  sha256 '3f075c916f5d6a52a301fee146528d6b5856be74db3a46f9e38f6d0127f78782'

  url "https://release.gitkraken.com/darwin/v#{version}.zip"
  appcast 'https://release.gitkraken.com/darwin/RELEASES',
          checkpoint: 'ffb7eb9c84d9da2ba8da95125f0d43eb0f6e6e06fef4661bc33e67cb97fabe68'
  name 'GitKraken'
  homepage 'https://www.gitkraken.com/'

  auto_updates true

  app 'GitKraken.app'

  zap delete: [
                '~/Library/Caches/GitKraken',
                '~/Library/Caches/com.axosoft.gitkraken.ShipIt',
                '~/Library/Caches/com.axosoft.gitkraken',
                '~/Library/Saved Application State/com.axosoft.gitkraken.savedState',
              ],
      trash:  [
                '~/Library/Application Support/com.axosoft.gitkraken.ShipIt',
                '~/Library/Application Support/GitKraken',
                '~/Library/Preferences/com.axosoft.gitkraken.helper.plist',
                '~/Library/Preferences/com.axosoft.gitkraken.plist',
                '~/.gitkraken',
              ]
end
