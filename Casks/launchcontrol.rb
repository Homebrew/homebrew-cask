cask 'launchcontrol' do
  version '1.35.2'
  sha256 'a0e811775a0e8e7f93ed3a5e0e7dd46d287e1fa237f867b21c7c6754a9e0759d'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: '2e848c780119df0aa862e02363dfa9d8d57b73f1af9b3be3bf9ec75058e57d0f'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'

  auto_updates true

  app 'LaunchControl.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.soma-zone.LaunchControl.Helper',
            launchctl: 'com.soma-zone.LaunchControl.Helper'

  zap delete: '~/Library/Caches/com.apple.helpd/Generated/com.soma-zone.LaunchControl.help*',
      trash:  '~/Library/Preferences/com.soma-zone.LaunchControl.plist'
end
