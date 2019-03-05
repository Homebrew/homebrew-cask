cask 'postman' do
  version '7.0.4'
  sha256 '781841a49e11757ab4d1fbe0db627e323e3d5c32aa09ec53db001e3430bf8738'

  # dl.pstmn.io/download/version was verified as official when first introduced to the cask
  url "https://dl.pstmn.io/download/version/#{version}/osx64"
  appcast 'https://dl.pstmn.io/update/status?channel=stable&currentVersion=6.7.4&arch=64&platform=osx&syncEnabled=true&teamPlan='
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
