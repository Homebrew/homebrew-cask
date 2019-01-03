cask 'launchcontrol' do
  version '1.44'
  sha256 'bb1f42d577a3413e5e1bb5bb724c91f8a39785a877b5c8d3d2fda46a1e8accb9'

  url "http://www.soma-zone.com/download/files/LaunchControl-#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'

  auto_updates true

  app 'LaunchControl.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.soma-zone.LaunchControl.Helper',
            launchctl: 'com.soma-zone.LaunchControl.Helper'

  zap trash: [
               '~/Library/Caches/com.apple.helpd/Generated/com.soma-zone.LaunchControl.help*',
               '~/Library/Preferences/com.soma-zone.LaunchControl.plist',
             ]
end
