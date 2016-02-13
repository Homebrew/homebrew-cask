cask 'controllermate' do
  version '4.9.8'
  sha256 'ab0e8bf540c04f691d71e39e6fd03350d96112780ee610f3d68fb284bad16765'

  # amazonaws.com/orderedbytes was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/orderedbytes/ControllerMate#{version.delete('.')}.zip"
  appcast 'http://www.orderedbytes.com/sparkle/appcast_cm460.xml',
          checkpoint: '076cef001c4959fb88e96a163257098feb78ac8ac3435e3ebb92b249a33469dc'
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
