cask 'launchcontrol' do
  version '1.32.5'
  sha256 '2458635c03af2bfce27d29b5deea98b96b91015e67e96464f64c65e88025d228'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: '734968c03179d95238248e411fb5837b5afa8e061d2c666154accde24bdc0c03'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'

  auto_updates true

  app 'LaunchControl.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.soma-zone.LaunchControl.Helper',
            launchctl: 'com.soma-zone.LaunchControl.Helper'

  zap delete: '~/Library/Caches/com.apple.helpd/Generated/com.soma-zone.LaunchControl.help',
      trash:  '~/Library/Preferences/com.soma-zone.LaunchControl.plist'
end
