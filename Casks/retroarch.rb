cask 'retroarch' do
  version '1.7.3'
  sha256 'faf96f881c7df903e8ce9fbb933f141daf4af01ed47cc1b7f88386fd9c86d50f'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
