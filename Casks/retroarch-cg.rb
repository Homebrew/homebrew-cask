cask 'retroarch-cg' do
  version '1.3.6'
  sha256 '79b536dde9348ecff66354cb97da28103e157a53c4d0c7276f32109aaacf469e'

  url "https://buildbot.libretro.com/stable/#{version}/apple/osx/x86_64/RetroArch_CG.dmg"
  name 'RetroArch CG'
  homepage 'https://www.libretro.com/'

  # Renamed to avoid conflict with retroarch.
  app 'RetroArch.app', target: 'RetroArch CG.app'
end
