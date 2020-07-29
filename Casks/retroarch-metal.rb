cask 'retroarch-metal' do
  version '1.8.8'
  sha256 'f930cecf16c784d890360b4b1639bd68b021e2472bc9112ac5b4fc4f3c49c71b'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch_Metal.dmg"
  appcast 'https://buildbot.libretro.com/stable/'
  name 'RetroArch Metal'
  homepage 'https://www.libretro.com/'

  conflicts_with cask: [
                         'retroarch',
                         'retroarch-cg',
                       ]

  app 'RetroArch.app'

  zap trash: '~/Library/Application Support/RetroArch'
end
