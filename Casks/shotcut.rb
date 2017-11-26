cask 'shotcut' do
  version '17.11.07'
  sha256 '94522ffd61bd0c1f664939e818de995f5fb34cbddf4a365bb021ba9011592481'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: '2681d9a45f92dac8df116bd8be9a999908dafa7420f13bf4091b2d1246940056'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
