cask 'launchcontrol' do
  version '1.30.1'
  sha256 '851b59dc733abfa5c1b158b41b2382340843787db8c1e0ed5eda2ba6f397db0b'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: 'ae9c65b25d4728231f797c7d1fa8148f2b67c249f2fce4311b8f7d8041d0e1f0'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'

  app 'LaunchControl.app'

  zap delete: [
                '/Library/LaunchDaemons/com.soma-zone.LaunchControl.Helper.plist',
                '/Library/PrivilegedHelperTools/com.soma-zone.LaunchControl.Helper',
                '~/Library/Caches/com.apple.helpd/Generated/com.soma-zone.LaunchControl.help',
                '~/Library/Preferences/com.soma-zone.LaunchControl.plist',
              ]
end
