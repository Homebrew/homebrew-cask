cask :v1 => 'controllermate' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/orderedbytes/ControllerMate.dmg'
  name 'ControllerMate'
  appcast 'http://www.orderedbytes.com/sparkle/appcast_cm460.xml',
          :sha256 => '680a8928983f72e588e92a71d83517ceaec5701c5d6ee70cb4a13671d14e793c'
  homepage 'http://www.orderedbytes.com/controllermate/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'ControllerMate.pkg'

  uninstall :pkgutil => 'com.orderedbytes.controllermate.*'
  zap       :delete => [
                        '~/Library/Application Support/ControllerMate',
                        '~/Library/Caches/com.orderedbytes.ControllerMate4',
                        '~/Library/Logs/ControllerMate MIDI',
                        '~/Library/Logs/ControllerMate',
                       ]
end
