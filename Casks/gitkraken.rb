cask 'gitkraken' do
  version '0.6.1'
  sha256 '851d121f8175426bc711088464a34e5f68722a8ca60596aaf90603c014898b12'

  url "http://release.gitkraken.com/darwin/v#{version}.zip"
  appcast 'https://release.gitkraken.com/darwin/RELEASES',
          checkpoint: 'cb1721b23e01e2144eeb684dc49fcb447ad06a101f19c4e1e81c6bb30cd93916'
  name 'GitKraken'
  homepage 'http://www.gitkraken.com/'
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
              ]
end
