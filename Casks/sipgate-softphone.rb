cask 'sipgate-softphone' do
  version '1.9.20'
  sha256 '74eaae811f61dd04b7ff6102f72c9010d6155f85200f42c4f23c46e3e8e12b3b'

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
