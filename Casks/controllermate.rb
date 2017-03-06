cask 'controllermate' do
  version '4.10.1'
  sha256 '472a2c6b7f5e8a3fa2ba0f0ce66eedc24cfe9cd361a539589cf2e6dec5904f0c'

  # amazonaws.com/orderedbytes was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/orderedbytes/ControllerMate#{version.no_dots}.zip"
  appcast 'https://www.orderedbytes.com/sparkle/appcast_cm460.xml',
          checkpoint: '66464e45e21dd1e37c9465a1a4ca4ea06c355b26ca37fb3bf39955d4177a383e'
  name 'ControllerMate'
  homepage 'https://www.orderedbytes.com/controllermate/'

  pkg '#temp#/ControllerMate.pkg'

  uninstall pkgutil: 'com.orderedbytes.controllermate.*'

  zap       delete: [
                      '~/Library/Application Support/ControllerMate',
                      '~/Library/Caches/com.orderedbytes.ControllerMate4',
                      '~/Library/Logs/ControllerMate MIDI',
                      '~/Library/Logs/ControllerMate',
                    ]
end
