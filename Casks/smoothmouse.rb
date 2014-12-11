cask :v1 => 'smoothmouse' do
  version :latest
  sha256 :no_check

  url 'http://smoothmouse.com/download/latest'
  homepage 'http://smoothmouse.com'
  license :unknown    # todo: improve this machine-generated value

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
