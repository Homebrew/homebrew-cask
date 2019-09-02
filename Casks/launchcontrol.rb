cask 'launchcontrol' do
  version '1.47.1'
  sha256 '80334168fded0413a581a046dc3a34fe4c0d4e46cdfce01705c5979a7558c7cd'

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
