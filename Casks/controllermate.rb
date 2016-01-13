cask 'controllermate' do
  version '4.9.8'
  sha256 'ab0e8bf540c04f691d71e39e6fd03350d96112780ee610f3d68fb284bad16765'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/orderedbytes/ControllerMate#{version.delete('.')}.zip"
  appcast 'http://www.orderedbytes.com/sparkle/appcast_cm460.xml',
          :sha256 => '65b120dc95f2e99771589209b002e40841181cb52dd3d11b0b39224e397cbb90'
  name 'ControllerMate'
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
