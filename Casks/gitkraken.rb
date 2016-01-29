cask 'gitkraken' do
  version '0.6.0'
  sha256 'c8c39604eaefe16bbb4645b77252cbcf9cda147fd160775c4898727fb3114168'

  url "http://release.gitkraken.com/darwin/v#{version}.zip"
  name 'GitKraken'
  homepage 'http://www.gitkraken.com/'
  license :gratis

  app 'GitKraken.app'

  zap delete: [
                '~/Library/Application Support/com.axosoft.gitkraken.ShipIt',
                '~/Library/Application Support/GitKraken',
                '~/Library/Caches/GitKraken',
                '~/Library/Caches/com.axosoft.gitkraken',
                '~/Library/Preferences/com.axosoft.gitkraken.plist',
                '~/Library/Saved Application State/com.axosoft.gitkraken.savedState',
                '/private/var/db/BootCaches/C5359B82-55B6-4CFA-94F8-EAC7F0CD3AAE/app.com.axosoft.gitkraken.playlist',
              ]
end
