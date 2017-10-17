cask 'launchcontrol' do
  version '1.35.1'
  sha256 'f8b9e80cc3cef6aa7aaa62b49062bfce8f0a57a4b92c46f29b33e6fa67927a9a'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: '9e6c080478d1742ed3517ed561db8b5fa25a2894022f9deeb3de24aa069f6104'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'

  auto_updates true

  app 'LaunchControl.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.soma-zone.LaunchControl.Helper',
            launchctl: 'com.soma-zone.LaunchControl.Helper'

  zap delete: '~/Library/Caches/com.apple.helpd/Generated/com.soma-zone.LaunchControl.help',
      trash:  '~/Library/Preferences/com.soma-zone.LaunchControl.plist'
end
