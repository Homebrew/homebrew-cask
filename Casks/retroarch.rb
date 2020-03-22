cask 'retroarch' do
  version '1.8.5'
  sha256 '856d050b699e016ccffa43e181ab7f5d88e7e788910e543738f5a5091ae978dd'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
