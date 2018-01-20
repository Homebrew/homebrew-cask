cask 'retroarch-cg' do
  version '1.7.0'
  sha256 '477bee18c45e45dec415054c8730b2b6dd10eeaa035da8d90c7c5c0b46318cd6'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch_CG.dmg"
  name 'RetroArch CG'
  homepage 'https://www.libretro.com/'

  # Renamed to avoid conflict with retroarch.
  app 'RetroArch.app', target: 'RetroArch CG.app'
end
