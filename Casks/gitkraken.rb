cask 'gitkraken' do
  version '1.5.2'
  sha256 '7f9e59aa123b88efb6d447ff29c54ede2d130c6de918c06fdee06bb5f989b284'

  url "https://release.gitkraken.com/darwin/v#{version}.zip"
  appcast 'https://release.gitkraken.com/darwin/RELEASES',
          checkpoint: 'cbbbfbe013b5d0e6a13f96bd9f7ae287831b8d2f4d61ddc98f8b660833d5633a'
  name 'GitKraken'
  homepage 'https://www.gitkraken.com/'
  license :gratis

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
