cask 'retroarch' do
  version '1.7.9'
  sha256 '890666181f9513790a666bf6986dffe8e04080aa01e62ef1dd993528a7150727'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
