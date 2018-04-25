cask 'retroarch-cg' do
  version '1.7.2'
  sha256 'c4f61772a6c16187098d293ff0f9724392ae06f8f77f629d91f98432ecfdbbe3'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch_CG.dmg"
  name 'RetroArch CG'
  homepage 'https://www.libretro.com/'

  # Renamed to avoid conflict with retroarch.
  app 'RetroArch.app', target: 'RetroArch CG.app'
end
