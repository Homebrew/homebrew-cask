cask 'launchcontrol' do
  version '1.47'
  sha256 'dfb35d6b8afb2a0b7d3115cc5838af19c47b9850f3ee43e4534f60b9f50561ad'

  url "https://www.soma-zone.com/download/files/LaunchControl-#{version}.tar.bz2"
  appcast 'https://www.soma-zone.com/LaunchControl/a/appcast.xml'
  name 'LaunchControl'
  homepage 'https://www.soma-zone.com/LaunchControl/'

  auto_updates true

  app 'LaunchControl.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.soma-zone.LaunchControl.Helper',
            launchctl: 'com.soma-zone.LaunchControl.Helper'

  zap trash: [
               '~/Library/Caches/com.apple.helpd/Generated/com.soma-zone.LaunchControl.help*',
               '~/Library/Preferences/com.soma-zone.LaunchControl.plist',
             ]
end
