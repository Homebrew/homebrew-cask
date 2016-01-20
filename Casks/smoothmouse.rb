cask 'smoothmouse' do
  version '1.0.10'
  sha256 '3bff8843fbe263426d0587a2ae671f3e55fe2a46e069677355cf41f6afa28497'

  url "http://update.smoothmouse.com/SmoothMouse%20#{version}.zip"
  appcast 'http://update.smoothmouse.com/appcast.xml',
          checkpoint: '5971898ce809ee4bad6a80918fc30d853f7dc98d88e35a05efa4f2c72b40b073'
  name 'SmoothMouse'
  homepage 'http://smoothmouse.com'
  license :gratis

  pkg 'SmoothMouse.pkg'

  uninstall launchctl: [
                         'com.cyberic.smoothmouse',
                         'com.cyberic.smoothmouseupdater',
                       ],
            quit:      'com.test.SmoothMouseDaemon',
            kext:      'com.cyberic.SmoothMouse',
            pkgutil:   [
                         'com.cyberic.pkg.SmoothMousePrefPane',
                         'com.cyberic.pkg.SmoothMouseKext2',
                       ],
            delete:    '/usr/bin/smoothmouse'
end
