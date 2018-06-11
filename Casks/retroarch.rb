cask 'retroarch' do
  version '1.7.3'
  sha256 'faf96f881c7df903e8ce9fbb933f141daf4af01ed47cc1b7f88386fd9c86d50f'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/",
          checkpoint: '6ee351187a709b0d7c8a545a59d3d1152cf9666a15da94b721639da670675e77'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
