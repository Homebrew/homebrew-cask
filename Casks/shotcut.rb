cask 'shotcut' do
  version '17.02.05'
  sha256 'f899f773164b23a0ad07d2efa9f129767534736005292044d9192e506b821edf'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: '10f1ea9cb4c11ef91a508ff88a29c9d2d68f75e25b99fc298f6d2c798d61ecb9'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
