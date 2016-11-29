cask 'controllermate' do
  version '4.9.10'
  sha256 '4f24f5763e96b0b0e959197dba5cc064928b59b74d49210bf5a484f4f9766d38'

  # amazonaws.com/orderedbytes was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/orderedbytes/ControllerMate#{version.no_dots}.zip"
  appcast 'https://www.orderedbytes.com/sparkle/appcast_cm460.xml',
          checkpoint: '6d05b022c9c81d131733523dccd2c45997f33ff694d1d76fe4016f27f5c4938a'
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
