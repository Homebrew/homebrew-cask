cask 'gitkraken' do
  version '3.2.1'
  sha256 'aaa4c182bb1603399f63042e0e6c599c03c551641bf7741d409e1cf23f45c4b6'

  url "https://release.gitkraken.com/darwin/v#{version}.zip"
  appcast 'https://release.gitkraken.com/darwin/RELEASES',
          checkpoint: 'c9d265588bdd4a12e5ed85011f36ce3817bf0450848a9e51deeb90fa4d53a6cc'
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
