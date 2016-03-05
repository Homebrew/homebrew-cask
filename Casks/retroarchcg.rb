cask 'retroarchcg' do
  version '1.3.0'
  sha256 'b898de82953092f24a66332e682d456652f195168e73ce5e0c0d1bc596636782'

  url "http://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch-v#{version}-osx-x86_64-OSX10.7.zip"
  name 'RetroArch'
  homepage 'https://www.libretro.com/'
  license :gpl

  app 'RetroArchCg.app'
end
