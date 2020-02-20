cask 'retroarch' do
  version '1.8.4'
  sha256 'e7b78358b07ec92cc6b437fe039b08c1b116e8e9efa8e40dfd1dd30cdc6cfa5c'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
