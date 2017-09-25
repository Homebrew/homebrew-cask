cask 'milanote' do
  version '1.0.10'
  sha256 '847eb803b255a9f27c21b475ac95abcec88182147b9da24136df73cc36342da4'

  # milanote-app-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://milanote-app-releases.s3.amazonaws.com/Milanote-#{version}.dmg"
  name 'Milanote'
  homepage 'https://www.milanote.com/'

  app 'Milanote.app'

  zap delete: [
                '~/Library/Caches/com.milanote.app',
                '~/Library/Caches/com.milanote.app.ShipIt',
                '~/Library/Library/Logs/Milanote',
              ],
      trash:  [
                '~/Library/Application Support/Milanote',
                '~/Library/Preferences/com.milanote.app.helper.plist',
                '~/Library/Preferences/com.milanote.app.plist',
              ]
end
