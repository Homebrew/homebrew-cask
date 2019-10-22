cask 'retroarch-metal' do
  version '1.7.9'
  sha256 'a3cb5b07a7bafb3d7d6aa1c1c6a4f3c9ecec704de1270e5f051b9235c6077fce'

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
