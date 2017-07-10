cask 'launchcontrol' do
  version '1.32.1'
  sha256 'c47f437e663879958ae05bf0eb8d487c4d0170c602f5cc6c3e49dd641301c21b'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: '7bf4494ee820a62006ee3d1cb9c80a6d69d0d6f455cc6bc6aea9fb59061f174f'
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
