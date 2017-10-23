cask 'retroarch' do
  version '1.6.7'
  sha256 '2e392c146b1b5292a51b83d5317d1c8ef0fd7ae831bf55ecbf92cd8fe116eff8'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/',
          checkpoint: 'daceb535d46ef24d786082ba1d0ff0b13c6dab770268b3a4d945d6a89fab00a8'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
