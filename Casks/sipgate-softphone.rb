cask 'sipgate-softphone' do
  version '1.9.16'
  sha256 '047dd79849c1f227fccd67b2e5ecf217c475ea3cec24c881cf9e2737c7308842'

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
