cask 'launchcontrol' do
  version '1.45'
  sha256 '37832a1e7cb7abd3efacf9809b047e5f9214980a6ede9bb48373900feba97b4d'

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
