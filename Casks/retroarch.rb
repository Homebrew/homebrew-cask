cask 'retroarch' do
  version '1.8.0'
  sha256 '46fe601b23ce80a5908965e6d94cba75a5f0b0fe392397c2d79a4f1c826312a7'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
