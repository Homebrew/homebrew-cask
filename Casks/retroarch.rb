cask 'retroarch' do
  version '1.7.4'
  sha256 '43c7dfd123425494617067abe08c75f2481cefd6efe6908bf522e041d36f5170'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch.dmg"
  appcast 'https://buildbot.libretro.com/stable/'
  name 'RetroArch'
  homepage 'https://www.libretro.com/'

  app 'RetroArch.app'
end
