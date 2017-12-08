cask 'controllermate' do
  version '4.10.4'
  sha256 'fdeb37ca8df145d927b9daef6dfa22ef6d1535f9ad1459c4f4ffcb52fbc19c3b'

  # amazonaws.com/orderedbytes was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/orderedbytes/ControllerMate#{version.no_dots}.zip"
  appcast 'https://www.orderedbytes.com/sparkle/appcast_cm460.xml',
          checkpoint: 'c28a14b30a4e7d0aa389f5bcf78736d29e79d19f409734eb624b30eccbe1a76a'
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
