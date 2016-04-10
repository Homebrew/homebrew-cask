cask 'retroarch-cg' do
  version '1.3.3'
  sha256 '59410f57518353076fa17afa8b3c1a8076c5fd25829f52f2ff3712bdb0513abe'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch_CG.dmg"
  name 'RetroArch CG'
  homepage 'http://www.libretro.com/'
  license :gpl

  # Renamed to avoid conflict with retroarch.
  app 'RetroArch.app', target: 'RetroArch CG.app'
end
