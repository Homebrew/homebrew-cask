cask 'shotcut' do
  version '17.03.02'
  sha256 'e21f4072235bf732b3d6bdd62ee28be4f6de3ec4d46f4aecc42d12a4aa78fa76'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: '96e52ccbd0f26229b78a978daf3dafe97cf96d3b5d6db033b2583ce477b1e382'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
