cask 'retroarch-metal' do
  version '1.8.0'
  sha256 '1abe6e4b3a6caff21f6b8e47731c7264d053e87a34e1f5b16aeb80996842684d'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch_Metal.dmg"
  appcast 'https://buildbot.libretro.com/stable/'
  name 'RetroArch Metal'
  homepage 'https://www.libretro.com/'

  conflicts_with cask: [
                         'retroarch',
                         'retroarch-cg',
                       ]

  app 'RetroArch.app'

  zap trash: '~/Library/Application Support/RetroArch'
end
