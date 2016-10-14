cask 'shotcut' do
  version '16.10.01'
  sha256 'b24bf7036df42be70b64f8905224568afaae04cd794d9898dfffda47ccad8db7'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: '779aed1d63fae54c2801da15a9993d598e9cf7815b9328995ebbe1dac8debc66'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
