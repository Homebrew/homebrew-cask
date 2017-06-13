cask 'postman' do
  version :latest
  sha256 :no_check

  # dl.pstmn.io/download/latest/osx was verified as official when first introduced to the cask
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
