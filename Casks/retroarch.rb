cask 'retroarch' do
  version '1.3.3'
  sha256 'd3b1ac29815d07477f44275481b7f5e6bdf7f7dbff394c490b7fa93d653cc1d0'

  url 'https://buildbot.libretro.com/stable/1.3.3/apple/osx/x86_64/RetroArch.dmg'
  name 'RetroArch'
  homepage 'http://www.libretro.com'
  license :gpl

  app 'RetroArch.app'
end
