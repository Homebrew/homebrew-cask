cask 'retroarch' do
  version '1.7.1'
  sha256 'c47014c9cf5f7919d6a67300c6af13e5eaa14ecdffc7cae7f68e0300413360c7'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/',
          checkpoint: '04d5e613286fede2ec256c9e23a5eb5f968ab8aab37ed6fd82569ce337e7f471'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
