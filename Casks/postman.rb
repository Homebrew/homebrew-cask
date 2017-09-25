cask 'postman' do
  version '5.2.0'
  sha256 'fe0f2ea868e7938f54118c85f8542ac19e7f3746add11b6e1d423030670b542f'

  # dl.pstmn.io/download/version/ was verified as official when first introduced to the cask
  url "https://dl.pstmn.io/download/version/#{version}/osx64"
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
