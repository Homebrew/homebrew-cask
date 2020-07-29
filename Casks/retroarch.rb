cask 'retroarch' do
  version '1.8.9'
  sha256 '4b7e5510fcb4d15e8203679c310cebdac66dde209c017e0b582d08271945cab1'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
