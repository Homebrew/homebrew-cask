cask 'controllermate' do
  version '4.10.6'
  sha256 'f5093f29532e072e821758dd3cd3ef93bfafe8372b0db19342a15eb515422df7'

  # amazonaws.com/orderedbytes was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/orderedbytes/ControllerMate#{version.no_dots}.zip"
  appcast 'https://www.orderedbytes.com/sparkle/appcast_cm460.xml',
          checkpoint: '85aed7061f3df8ea38953d37c2626fab1ce0857e8bc5737954fce5cc338f4373'
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
