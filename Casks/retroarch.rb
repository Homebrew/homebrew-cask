cask 'retroarch' do
  version '1.7.5'
  sha256 '3784c4c182cec5ee56abbc9a8022bbe9107df9d16e14c777ada494d5119fb195'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
