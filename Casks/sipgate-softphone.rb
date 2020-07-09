cask 'sipgate-softphone' do
  version '1.9.23'
  sha256 '14ca4c76d7aa03acc90b501c399495a52399bfe776551d09f5ab78b2b0cc28e5'

  # sipgate-desktop-app-dev.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://sipgate-desktop-app-dev.s3.amazonaws.com/sipgate-softphone-#{version}.dmg"
  appcast 'https://sipgate-desktop-app-dev.s3.amazonaws.com/latest-mac.yml'
  name 'sipgate softphone'
  homepage 'https://www.sipgateteam.de/softphone'

  app 'sipgate softphone.app'

  zap trash: [
               '~/Library/Saved Application State/com.sipgate.desktop.savedState',
               '~/Library/Preferences/com.sipgate.desktop.plist',
               '~/Library/Saved Application State/com.sipgate.desktop.savedState',
             ]
end
