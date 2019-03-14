cask 'kicad' do
  version '5.0.1'
  sha256 '917bf067740c2e17c3ff3ad9da342a9e9a16c61b947cc4c532cf3f37fcb2f9ca'

  url "http://downloads.kicad-pcb.org/osx/stable/kicad-unified-#{version}.dmg"
  appcast 'http://downloads.kicad-pcb.org/osx/stable/'
  name 'KiCad'
  homepage 'http://kicad-pcb.org/'

  suite 'KiCad'

  zap trash: '~/Library/Preferences/kicad'
end
