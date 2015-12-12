cask :v1 => 'smoothmouse' do
  version '1.0.10'
  sha256 '3bff8843fbe263426d0587a2ae671f3e55fe2a46e069677355cf41f6afa28497'

  url "http://update.smoothmouse.com/SmoothMouse%20#{version}.zip"
  appcast 'http://update.smoothmouse.com/appcast.xml',
          :sha256 => '8730340916f6303ee067ac4a8b575448ce5e6c840d30542dd106dd0c45b18e62'
  name 'SmoothMouse'
  homepage 'http://smoothmouse.com'
  license :gratis

  pkg 'SmoothMouse.pkg'

  uninstall :launchctl => [
                           'com.cyberic.smoothmouse',
                           'com.cyberic.smoothmouseupdater',
                          ],
            :quit      => 'com.test.SmoothMouseDaemon',
            :kext      => 'com.cyberic.SmoothMouse',
            :pkgutil   => [
                           'com.cyberic.pkg.SmoothMousePrefPane',
                           'com.cyberic.pkg.SmoothMouseKext2',
                          ],
            :delete    => '/usr/bin/smoothmouse'
end
