class Smoothmouse < Cask
  url 'http://smoothmouse.com/download/latest'
  homepage 'http://smoothmouse.com'
  version 'latest'
  sha256 :no_check
  install 'SmoothMouse.pkg'
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
            :files     => '/usr/bin/smoothmouse'
end
