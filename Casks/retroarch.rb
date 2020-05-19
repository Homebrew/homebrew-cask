cask 'retroarch' do
  version '1.8.7'
  sha256 '815d4d24ece7e0a56700180ea83d95374787169006643df9cdc2b8fc69ba6c03'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
