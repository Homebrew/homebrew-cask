cask :v1 => 'controllermate' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/orderedbytes/ControllerMate.dmg'
  homepage 'http://www.orderedbytes.com/controllermate/'
  license :unknown

  pkg 'ControllerMate.pkg'

  uninstall :script => 'ControllerMate Uninstaller.app/Contents/MacOS/ControllerMate Uninstaller',
            :pkgutil => 'com.orderedbytes.controllermate.*'
  zap       :delete => [
                        '~/Library/Application Support/ControllerMate',
                        '~/Library/Caches/com.orderedbytes.ControllerMate4',
                        '~/Library/Logs/ControllerMate MIDI',
                        '~/Library/Logs/ControllerMate',
                       ]
end
