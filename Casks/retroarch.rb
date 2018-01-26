cask 'retroarch' do
  version '1.7.0'
  sha256 'b2ed69e6582371a8cefdf9db8b6d71f4f39d03c547e4f6e25122b66f61f5ca59'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/',
          checkpoint: '99b9aca11df8fd0044f0f9f47d69fd0417a653ea670af2cea1a044db41543137'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
