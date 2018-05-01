cask 'retroarch' do
  version '1.7.2'
  sha256 '82ac27cddbf0184525719aaceb04d6382f1eea47f903598ab3558f89611fac3c'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/',
          checkpoint: '00cb7e9b8b305af50d4147402b284d27c494f9eee093e17b8c5ff04dbbd8bab2'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
