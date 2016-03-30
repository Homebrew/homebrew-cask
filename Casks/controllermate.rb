cask 'controllermate' do
  version '4.9.9'
  sha256 '24f3dd907df22222b90804db545c998533c86add36f4892292125ad4ccdacc08'

  # amazonaws.com/orderedbytes was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/orderedbytes/ControllerMate#{version.delete('.')}.zip"
  appcast 'http://www.orderedbytes.com/sparkle/appcast_cm460.xml',
          checkpoint: '46aa2ba667280e37d3a6deb3bf561d6c2cde2e0bcebda1da9d560f58e4b3834a'
  name 'ControllerMate'
  homepage 'http://www.orderedbytes.com/controllermate/'
  license :freemium

  pkg '#temp#/ControllerMate.pkg'

  uninstall pkgutil: 'com.orderedbytes.controllermate.*'

  zap       delete: [
                      '~/Library/Application Support/ControllerMate',
                      '~/Library/Caches/com.orderedbytes.ControllerMate4',
                      '~/Library/Logs/ControllerMate MIDI',
                      '~/Library/Logs/ControllerMate',
                    ]
end
