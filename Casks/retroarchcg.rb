cask 'retroarchcg' do
  version '1.3.3'
  sha256 '59410f57518353076fa17afa8b3c1a8076c5fd25829f52f2ff3712bdb0513abe'

  url "http://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch_CG.dmg"
  # Renamed to avoid conflict with RetroArch (non-CG).
  name 'RetroArch CG'
  homepage 'https://www.libretro.com/'
  license :gpl

  # Renamed to avoid conflict with RetroArch (non-CG).
  app 'RetroArch.app', target: 'RetroArchCG.app'
end
