cask 'retroarch-cg' do
  version '1.5.0'
  sha256 'e6278153ca77bb5445c134c41c42c95ff2d09309479c999ea8d8a968c9fddc7e'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch_CG.dmg"
  name 'RetroArch CG'
  homepage 'https://www.libretro.com/'

  # Renamed to avoid conflict with retroarch.
  app 'RetroArch.app', target: 'RetroArch CG.app'
end
