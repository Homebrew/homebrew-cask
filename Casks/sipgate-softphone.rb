cask 'sipgate-softphone' do
  version '1.9.12'
  sha256 'fa938c5475cfcec00dce8778ffa1e2048922a81f4e4f11d053581b9dd3b742f6'

  # sipgate-desktop-app-dev.s3.amazonaws.com was verified as official when first introduced to the cask
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
