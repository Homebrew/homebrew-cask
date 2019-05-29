cask 'postman' do
  version '7.1.1'
  sha256 'd5acc86250e256953e7cd873ec3f22d3f9ad444e884392bfeba632ccbb9d3e58'

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
