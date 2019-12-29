cask 'retroarch' do
  version '1.8.2'
  sha256 'b05b509c72a9d1102692e3d4b5cd7e0fec735c6df70f80ed076fe0d98b6792d8'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
