cask 'launchcontrol' do
  version '1.32.3'
  sha256 '1dc5dfbf6237b5486caa5b4aa0544f1d5acd722bf7d3f70fa5cd6bdd84b05fa8'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: '2f07f86c2d24763859dcdd142ab0326dadc43d4cfa336a73f6ac74429f3568c1'
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
