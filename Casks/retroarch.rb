cask 'retroarch' do
  version '1.8.6'
  sha256 'eb8f26e7e557b2c68bb5f22452b1ac5a09666f5d213b27470b4da0f2b06679e0'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
