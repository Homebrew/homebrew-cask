cask 'controllermate' do
  version '4.10.0'
  sha256 '59590e5c9129ed62293f68bfc06cd430bbc57f34c430a1417f718e4f1e0aeb62'

  # amazonaws.com/orderedbytes was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/orderedbytes/ControllerMate#{version.no_dots}.zip"
  appcast 'https://www.orderedbytes.com/sparkle/appcast_cm460.xml',
          checkpoint: 'f89ef55cc362d4c3a98dd523ea0655870127497460c774c8a0caaa720b2f5934'
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
