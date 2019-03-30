cask 'postman' do
  version '7.0.6'
  sha256 '5dc15a7fe5013a465536d6a12713bf8cd72fa698d5fc578965effb01f10915b5'

  # dl.pstmn.io/download/version was verified as official when first introduced to the cask
  url "https://dl.pstmn.io/download/version/#{version}/osx64"
  appcast "https://dl.pstmn.io/update/status?channel=stable&currentVersion=#{version.major}.0.0&arch=64&platform=osx&syncEnabled=true&teamPlan="
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
