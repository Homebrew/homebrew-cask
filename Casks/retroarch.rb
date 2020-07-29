cask 'retroarch' do
  version '1.8.8'
  sha256 'e649be3ef8d9478ac5f58f78a6959821f15c9691e011efb1e4ef341b6ac8b29f'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
