cask 'gitkraken' do
  version '1.9.1'
  sha256 'a122128cd9184cafb35b0a9f38db1809bd555592a467f8db2153231796002690'

  url "https://release.gitkraken.com/darwin/v#{version}.zip"
  appcast 'https://release.gitkraken.com/darwin/RELEASES',
          checkpoint: '466255a8a17fb791ab79e350017d4df3643164382a4ec74c6e51cf4d3453f322'
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
