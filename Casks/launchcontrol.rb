cask 'launchcontrol' do
  version '1.32.4'
  sha256 '7390e09fb745f8dcbab6f4fb01ceff2822f85171129668ec9b42d4fd91061910'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: 'e7bfa5b7ee9691c7fe8a3926412265956eed2e32ffbd85aa6342a41e3a156944'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'

  app 'LaunchControl.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.soma-zone.LaunchControl.Helper',
            launchctl: 'com.soma-zone.LaunchControl.Helper'

  zap delete: '~/Library/Caches/com.apple.helpd/Generated/com.soma-zone.LaunchControl.help',
      trash:  '~/Library/Preferences/com.soma-zone.LaunchControl.plist'
end
