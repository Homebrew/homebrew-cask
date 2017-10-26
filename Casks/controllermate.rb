cask 'controllermate' do
  version '4.10.3'
  sha256 'a20f24420084fdaeccfd0e116f0d51d6195132892a6ff81bf24c2c0dbac621f2'

  # amazonaws.com/orderedbytes was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/orderedbytes/ControllerMate#{version.no_dots}.zip"
  appcast 'https://www.orderedbytes.com/sparkle/appcast_cm460.xml',
          checkpoint: '684bfc150d43530aabc7563ba0ad16f249eb90d3dca70c435f99314ae51f2cf7'
  name 'ControllerMate'
  homepage 'https://www.orderedbytes.com/controllermate/'

  pkg '#temp#/ControllerMate.pkg'

  uninstall launchctl: [
                         'com.orderedbytes.ControllerMateHelper',
                         'com.orderedbytes.ControllerMate.KextHelper',
                       ],
            kext:      [
                         'com.orderedbytes.driver.CMUSBDevices',
                         'com.orderedbytes.driver.ControllerMateFamily',
                       ],
            pkgutil:   'com.orderedbytes.controllermate.*',
            signal:    [
                         ['TERM', "com.orderedbytes.ControllerMate#{version.major}"],
                         ['TERM', 'com.orderedbytes.ControllerMateHelper'],
                       ]

  zap delete: [
                '~/Library/Application Support/ControllerMate',
                '~/Library/Caches/com.orderedbytes.ControllerMate4',
                '~/Library/Logs/ControllerMate MIDI',
                '~/Library/Logs/ControllerMate',
              ]

  caveats do
    reboot
  end
end
