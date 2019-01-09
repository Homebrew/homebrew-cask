cask 'retroarch-cg' do
  version '1.7.5'
  sha256 '1ff99354183c6177c5366391686f75a591da43c332e8d32c071caccb7321f822'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch_CG.dmg"
  name 'RetroArch CG'
  homepage 'https://www.libretro.com/'

  # Renamed to avoid conflict with retroarch.
  app 'RetroArch.app', target: 'RetroArch CG.app'
end
