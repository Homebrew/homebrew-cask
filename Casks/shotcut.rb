cask 'shotcut' do
  version '18.05.03'
  sha256 '7a8d76551df1d18d92e9452a1d981b8165756695bfe740fc20f1d7c8f671b4b7'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: 'a826b75fad65ad8a5112f85fc92462be5c0a7edcb12495e7e84e07ed492ead2b'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
