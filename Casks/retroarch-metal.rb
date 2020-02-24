cask 'retroarch-metal' do
  version '1.8.4'
  sha256 'bdc9fd2cbaab1e848ec187e02f5f17abf9c03c1e8edf2b595356e2418d448986'

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
