cask 'retroarch-cg' do
  version '1.7.1'
  sha256 'a71490e2cbe8beeed5c2e1e2070790a6388b601700fa8dc53ffce86a4148ac8f'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch_CG.dmg"
  name 'RetroArch CG'
  homepage 'https://www.libretro.com/'

  # Renamed to avoid conflict with retroarch.
  app 'RetroArch.app', target: 'RetroArch CG.app'
end
