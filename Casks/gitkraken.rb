cask 'gitkraken' do
  version '3.1.0'
  sha256 'f9230813da10816d46f62ebdb0ef41a0cb141875dc01142f4ed90ca485c92316'

  url "https://release.gitkraken.com/darwin/v#{version}.zip"
  appcast 'https://release.gitkraken.com/darwin/RELEASES',
          checkpoint: 'eba3ab48c353650c7ee57bcd4125d44dbf9f9c7508873b5dbd736e44aa8f917e'
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
