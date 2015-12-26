cask 'retroarch' do
  version '1.2.2'
  sha256 'fb5bb649edb2be67ca106166be27e3c4be8fe0d84169a4af1ae6e00ad3b3e784'

  url "https://buildbot.libretro.com/stable/#{version}/osx-x86_64/RetroArch-OSX10.7-x86_64-v#{version}.zip"
  name 'RetroArch'
  homepage 'https://www.libretro.com/'
  license :gpl

  app 'RetroArch.app'
end
