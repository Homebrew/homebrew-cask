cask 'postman' do
  version '6.7.4'
  sha256 'f0ac7764e70eb8e9fd27efb82f69ba8e41b9cb7a3767e1db887b439dff09a029'

  # dl.pstmn.io/download/version was verified as official when first introduced to the cask
  url "https://dl.pstmn.io/download/version/#{version}/osx64"
  appcast "https://dl.pstmn.io/update/status?channel=stable&currentVersion=#{version}&arch=64&platform=osx&syncEnabled=true&teamPlan="
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
