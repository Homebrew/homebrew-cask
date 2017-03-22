cask 'retroarch' do
  version '1.5.0'
  sha256 'd62fcd6cd6cd8ca42efae8aec24fb71104de55b9e3450f18ad83776c2d9d3f50'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/',
          checkpoint: '7b75c088adb25dcc880685cd6792b0054afe91e9f27f4c56f19cb475b02dec20'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
