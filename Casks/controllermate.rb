cask 'controllermate' do
  version '4.10.2'
  sha256 'fbbfe4bf7140314a732f1d9ed0b42ddf54d0ee30a13c3d8f9560e5933da8addf'

  # amazonaws.com/orderedbytes was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/orderedbytes/ControllerMate#{version.no_dots}.zip"
  appcast 'https://www.orderedbytes.com/sparkle/appcast_cm460.xml',
          checkpoint: '745392e35517416f967acbb0fa5831acd50f7a57187b81c4f062c12488a8dabf'
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
