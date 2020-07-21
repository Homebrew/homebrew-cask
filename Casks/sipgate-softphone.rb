cask 'sipgate-softphone' do
  version '1.10.3'
  sha256 '4a26ed5060756e8387ad56830071c2e5d47cd09b5a23e9ebbdc525cf596ea9ca'

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
