cask 'retroarch' do
  version '1.7.3'
  sha256 'faf96f881c7df903e8ce9fbb933f141daf4af01ed47cc1b7f88386fd9c86d50f'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/',
          checkpoint: 'b8f1a5595940a3272f40f45b385e63019ee736f80a90bbc2642eee0afd2b87b6'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
