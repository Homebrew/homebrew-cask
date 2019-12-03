cask 'retroarch-metal' do
  version '1.8.1'
  sha256 '8f3774ed9bb61ba7ac73cfc0c69c40e6cd2c0a80f1858283e69292b6c3635db4'

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
