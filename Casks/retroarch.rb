cask 'retroarch' do
  version '1.7.6'
  sha256 '851da439731d77d276d8deab70081a481fb7c04e7c09233c8887db60ed86e5fb'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
