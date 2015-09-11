cask :v1 => 'controllermate' do
  version '4.9.7'
  sha256 'dad06ea5627a4848a3cf983977565fc36a1d3dd75702a2fda97a68ca06b23c14'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/orderedbytes/ControllerMate#{version.delete('.')}.zip"
  name 'ControllerMate'
  appcast 'http://www.orderedbytes.com/sparkle/appcast_cm460.xml',
          :sha256 => '680a8928983f72e588e92a71d83517ceaec5701c5d6ee70cb4a13671d14e793c'
  homepage 'http://www.orderedbytes.com/controllermate/'
  license :freemium

  pkg '#temp#/ControllerMate.pkg'

  uninstall :pkgutil => 'com.orderedbytes.controllermate.*'
  zap       :delete => [
                        '~/Library/Application Support/ControllerMate',
                        '~/Library/Caches/com.orderedbytes.ControllerMate4',
                        '~/Library/Logs/ControllerMate MIDI',
                        '~/Library/Logs/ControllerMate',
                       ]
end
