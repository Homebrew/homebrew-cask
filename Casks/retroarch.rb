cask 'retroarch' do
  version '1.3.4'
  sha256 'd8b0f542d7c3e0fb272a748e99fe23830e4b47ccea2335e2ebc91c64361a9c89'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  name 'RetroArch'
  homepage 'http://libretro.com'
  license :gpl

  app 'RetroArch.app'
end
