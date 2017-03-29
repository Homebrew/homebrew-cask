cask 'smoothmouse' do
  version '1.0.10'
  sha256 '3bff8843fbe263426d0587a2ae671f3e55fe2a46e069677355cf41f6afa28497'

  url "http://update.smoothmouse.com/SmoothMouse%20#{version}.zip"
  appcast 'http://update.smoothmouse.com/appcast.xml',
          checkpoint: '9007f7bdb7c06710be267bcaa11b07eebdf390eb6282111c22d6f2c72c17da07'
  name 'SmoothMouse'
  homepage 'http://smoothmouse.com/'

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
