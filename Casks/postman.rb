cask 'postman' do
  version '6.1.4'
  sha256 '07d368966f3d90007a3f4684440618c68084da02fa25ca56f997b21a7601297a'

  # dl.pstmn.io/download/version/ was verified as official when first introduced to the cask
  url "https://dl.pstmn.io/download/version/#{version}/osx64"
  name 'Postman'
  homepage 'https://www.getpostman.com/'

  auto_updates true

  app 'Postman.app'

  zap trash: [
               '~/Library/Application Support/Postman',
               '~/Library/Application Support/com.postmanlabs.mac.ShipIt',
               '~/Library/Caches/Postman',
               '~/Library/Caches/com.postmanlabs.mac',
               '~/Library/Preferences/com.postmanlabs.mac.plist',
               '~/Library/Saved Application State/com.postmanlabs.mac.savedState',
             ]
end
