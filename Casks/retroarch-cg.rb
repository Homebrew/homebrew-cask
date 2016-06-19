cask 'retroarch-cg' do
  version '1.3.4'
  sha256 '258b9a6db069b8d532a23f8c9c19c1823d7187268b1f06cebda148098ce92879'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch_CG.dmg"
  name 'RetroArch CG'
  homepage 'http://www.libretro.com/'
  license :gpl

  # Renamed to avoid conflict with retroarch.
  app 'RetroArch.app', target: 'RetroArch CG.app'
end
