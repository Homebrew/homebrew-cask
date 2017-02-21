cask 'postman' do
  version '4.10.2'
  sha256 '7d5db210802c925bfd114516db200e3c48e801bb4adf3476526e9d8b84c940dd'

  # dl.pstmn.io was verified as official when first introduced to the cask
  url 'https://dl.pstmn.io/download/latest/osx'
  name 'Postman'
  homepage 'https://www.getpostman.com/'

  app 'Postman.app'

  zap delete: [
                '~/Library/Application Support/Postman',
                '~/Library/Application Support/com.postmanlabs.mac.ShipIt',
                '~/Library/Caches/Postman',
                '~/Library/Caches/com.postmanlabs.mac',
                '~/Library/Preferences/com.postmanlabs.mac.plist',
                '~/Library/Saved Application State/com.postmanlabs.mac.savedState',
              ]
end
