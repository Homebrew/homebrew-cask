cask 'launchcontrol' do
  version '1.46'
  sha256 '228eb4fef3279484090d40ff13fc47d9c3aa936ce55109bbb871284aae387f08'

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
