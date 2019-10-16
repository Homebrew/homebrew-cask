cask 'launchcontrol' do
  version '1.48.2'
  sha256 '0c870454966592f98466f585f32b8bdf8ecfe2029d612cf623a23e82af5ac994'

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
