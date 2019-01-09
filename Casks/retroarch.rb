cask 'retroarch' do
  version '1.7.5'
  sha256 'b73726965ceb5a55aa89508c29c4fafc2b82709dbcf919230127098279f28a5f'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
