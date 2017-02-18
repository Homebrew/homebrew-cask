cask 'shotcut' do
  version '17.02.01'
  sha256 '7cebfa9b1e79f6d580a99a3025f4619d0d10aa4565b8493a8d757426807f4722'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: '10f1ea9cb4c11ef91a508ff88a29c9d2d68f75e25b99fc298f6d2c798d61ecb9'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
