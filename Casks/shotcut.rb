cask 'shotcut' do
  version '17.10.02'
  sha256 '4a2c0dec91fc59714277ccecfa245bbf1b5be265dadce88696e6a1fd73fff021'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: '236fed6581d7db50aa7a4bc85b052f7de44a51be9ebd1ef303cc994fb87f74f0'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
