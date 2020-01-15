cask 'launchcontrol' do
  version '1.49'
  sha256 '233c5c06ea587316d1c12d62f951634b26c6ecadd7049b9a6686dbd789dee0ed'

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
