cask 'launchcontrol' do
  version '1.40.1'
  sha256 '00ce82f3b2870b6bd320a4e4ede53ec04287e0dcabfd3ac2c8742c7074f3c673'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: 'ebafff32847210061f40406b07debb4c0406582135bc37504606f09e2398cd1e'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'

  auto_updates true

  app 'LaunchControl.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.soma-zone.LaunchControl.Helper',
            launchctl: 'com.soma-zone.LaunchControl.Helper'

  zap trash: [
               '~/Library/Caches/com.apple.helpd/Generated/com.soma-zone.LaunchControl.help*',
               '~/Library/Preferences/com.soma-zone.LaunchControl.plist',
             ]
end
