cask 'retroarch-cg' do
  version '1.6.0'
  sha256 '84a781c3499ce57418cc8452c623946cf343359e47afbebdc99eb5508cb8ee82'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch_CG.dmg"
  name 'RetroArch CG'
  homepage 'https://www.libretro.com/'

  # Renamed to avoid conflict with retroarch.
  app 'RetroArch.app', target: 'RetroArch CG.app'
end
