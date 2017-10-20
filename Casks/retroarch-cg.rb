cask 'retroarch-cg' do
  version '1.6.7'
  sha256 'e5d8971e3f59d86d26b1988b309219cfc09a5ba44aff1b14becbf6c67ea45cd8'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch_CG.dmg"
  name 'RetroArch CG'
  homepage 'https://www.libretro.com/'

  # Renamed to avoid conflict with retroarch.
  app 'RetroArch.app', target: 'RetroArch CG.app'
end
