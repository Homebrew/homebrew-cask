cask 'shotcut' do
  version '19.01.27'
  sha256 '7b0fe39bfc87cbb5740d4e4cc2c2fda35330972b4dd01ca480c3dc83b128b0e3'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
