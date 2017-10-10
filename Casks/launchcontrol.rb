cask 'launchcontrol' do
  version '1.35'
  sha256 'b23eb7cebccad7e6fb3ff3e2cc60350eea6cde136b0872353b20b34ad4ef9966'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: '776efea8c485dc3c33aad071ee5ebfe77ba4a0329ad2971d3c7801b40e23ccda'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'

  auto_updates true

  app 'LaunchControl.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.soma-zone.LaunchControl.Helper',
            launchctl: 'com.soma-zone.LaunchControl.Helper'

  zap delete: '~/Library/Caches/com.apple.helpd/Generated/com.soma-zone.LaunchControl.help',
      trash:  '~/Library/Preferences/com.soma-zone.LaunchControl.plist'
end
