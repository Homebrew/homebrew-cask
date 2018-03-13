cask 'retroarch' do
  version '1.7.1'
  sha256 '936f658c543eeeeb822113ef224200ab41cd2b5d1d91509c232fd6e73e6294ad'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/',
          checkpoint: '1b9119444037f4854d688302e03fdb5aa054867fb3a9d847d82588a67f762d90'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
