cask 'retroarch' do
  version '1.7.7'
  sha256 '526fe798f6ef70fe464ee08831d99af7112573bdda681a3fd1bc92db12300fe4'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
