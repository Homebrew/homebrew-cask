cask :v1 => 'kicad' do
  version '4.0.0'
  sha256 '066520f10e9646e88c2e1d7812adf54a73a331592076f394cb439a97c228410b'

  url "http://downloads.kicad-pcb.org/osx/stable/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org/'
  license :gpl

  suite 'Kicad'
end
