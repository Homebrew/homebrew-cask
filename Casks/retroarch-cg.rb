cask 'retroarch-cg' do
  version '1.7.6'
  sha256 '6cf4e640b56ea197d5c19f6f857936596ba7ea207a822a8c26d7e78e4b1d5e07'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch_CG.dmg"
  name 'RetroArch CG'
  homepage 'https://www.libretro.com/'

  # Renamed to avoid conflict with retroarch.
  app 'RetroArch.app', target: 'RetroArch CG.app'
end
