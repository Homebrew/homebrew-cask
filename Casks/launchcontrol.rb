cask 'launchcontrol' do
  version '1.33'
  sha256 'c05b20f07bf0dfb4d0cdca112a70aa2e1bac7461b22efb81635e498688cd506a'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: 'dfa393365348c6d439953f9fca3e9adb3345a234f1f94f71c3847072ea47f3a7'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'

  auto_updates true

  app 'LaunchControl.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.soma-zone.LaunchControl.Helper',
            launchctl: 'com.soma-zone.LaunchControl.Helper'

  zap delete: '~/Library/Caches/com.apple.helpd/Generated/com.soma-zone.LaunchControl.help',
      trash:  '~/Library/Preferences/com.soma-zone.LaunchControl.plist'
end
