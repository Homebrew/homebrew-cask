cask 'retroarch' do
  version '1.6.9'
  sha256 '8f40bda9663f3d5038d4794e9898a4ec556ed99388968fb9369c7fdb2602d033'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/',
          checkpoint: 'fbfa45768b0f365098df211389b076a31ac4ef37e6df265d0e049f6a59187421'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
