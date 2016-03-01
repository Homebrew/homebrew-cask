cask 'gitkraken' do
  version '0.8.0'
  sha256 '68b3c5fab1edc9f6703ca7e9fe54ca88db7e8a1574ecac2e416c86d8fe10d8f1'

  url "http://release.gitkraken.com/darwin/v#{version}.zip"
  appcast 'https://release.gitkraken.com/darwin/RELEASES',
          checkpoint: '5e37758cec9f0dd8b619f8cc40a257bd1ac1635fd1b2d28e0bd651bf2864dd6d'
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
