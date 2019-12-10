cask 'retroarch' do
  version '1.8.1'
  sha256 '819cfa685fbec93b8fdf73d2e49e07949703a7f6919da5675ec47eee338b6f60'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
