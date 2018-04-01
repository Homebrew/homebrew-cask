cask 'retroarch-cg' do
  version '1.7.1'
  sha256 'a744620d1ef082822f339e9b083fc2a96b79855fb0c6ac2468fbbb191560e12a'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch_CG.dmg"
  name 'RetroArch CG'
  homepage 'https://www.libretro.com/'

  # Renamed to avoid conflict with retroarch.
  app 'RetroArch.app', target: 'RetroArch CG.app'
end
