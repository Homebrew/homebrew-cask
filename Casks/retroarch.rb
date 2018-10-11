cask 'retroarch' do
  version '1.7.5'
  sha256 '9bbedc943213f7602bba7dcf1056d92c9c4af92d7d00dbfcb98807e6c1829251'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
