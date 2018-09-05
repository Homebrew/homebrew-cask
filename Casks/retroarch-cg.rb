cask 'retroarch-cg' do
  version '1.7.3'
  sha256 'c47c19a3a3774de04bfeb9bba0b41f396fb2e0d14570062d1704a37d32cf527b'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch_CG.dmg"
  name 'RetroArch CG'
  homepage 'https://www.libretro.com/'

  # Renamed to avoid conflict with retroarch.
  app 'RetroArch.app', target: 'RetroArch CG.app'
end
