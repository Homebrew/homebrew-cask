cask 'retroarch' do
  version '1.7.8'
  sha256 'e02a7c7386d81e1869be55af1e3466dccaa6d3a461680e2c030c224b8e287d4a'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
