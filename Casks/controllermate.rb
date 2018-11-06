cask 'controllermate' do
  version '4.11.1'
  sha256 'dd95d0b2abd6c23148092c96593fb303befc374c6a912afad57efb48b0a1e04b'

  # amazonaws.com/orderedbytes was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/orderedbytes/ControllerMate#{version.no_dots}.zip"
  appcast 'https://www.orderedbytes.com/sparkle/appcast_cm460.xml'
  name 'ControllerMate'
  homepage 'https://www.orderedbytes.com/controllermate/'

  pkg '#temp#/ControllerMate.sparkle_interactive.pkg'

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

  zap trash: [
               '~/Library/Application Support/ControllerMate',
               '~/Library/Caches/com.orderedbytes.ControllerMate4',
               '~/Library/Logs/ControllerMate MIDI',
               '~/Library/Logs/ControllerMate',
             ]

  caveats do
    reboot
  end
end
