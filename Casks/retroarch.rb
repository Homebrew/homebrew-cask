cask 'retroarch' do
  version '1.6.0'
  sha256 '2ed790d55d7241ab9de612f3b641c0ff417abf5ce617579e3525023bf6e680f2'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/',
          checkpoint: 'bfb2173b7a789289732dfe4e644850285f1a72fbeb7bf2c82d8472439dc98d71'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
