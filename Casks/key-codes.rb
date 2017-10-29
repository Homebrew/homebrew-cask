cask 'key-codes' do
  version '2.1'
  sha256 '60ec4c0cef5e97943c91e4ed317434bcaddd4cdbce93368d8bca9db9d45c60e2'

  url 'https://manytricks.com/download/keycodes'
  appcast 'https://manytricks.com/keycodes/appcast',
          checkpoint: 'ee23d55136c09eac175cf1e159cdc556a88c4d1e509b977eb4ce2f506c35d8fd'
  name 'Key Codes'
  homepage 'https://manytricks.com/keycodes/'

  auto_updates true

  app 'Key Codes.app'

  zap delete: [
                '~/Library/Caches/com.manytricks.KeyCodes',
                '~/Library/Preferences/com.manytricks.KeyCodes.plist',
              ]
end
