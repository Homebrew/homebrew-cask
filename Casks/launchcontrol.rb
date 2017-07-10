cask 'launchcontrol' do
  version '1.32.2'
  sha256 'd8c224a270c088bfe98d5a564099ac073c38b01240d4ad10cda057c22b18dbf0'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: '2c829814d8b965b9e6b3dc58571afd391fb202804591298f34245b5cd4168811'
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
