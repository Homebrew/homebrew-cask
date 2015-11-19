cask :v1 => 'smoothmouse' do
  version :latest
  sha256 :no_check

  url 'http://smoothmouse.com/download/latest'
  appcast 'http://update.smoothmouse.com/appcast.xml',
          :sha256 => '8730340916f6303ee067ac4a8b575448ce5e6c840d30542dd106dd0c45b18e62'
  name 'SmoothMouse'
  homepage 'http://smoothmouse.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

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
