cask :v1 => 'kicad-extras' do
  version '4.0.0-rc2-1'
  sha256 '3049e936dce4510f3bc85dc57a466742e0de9882a2f3b4a63144f61d33b3cf4b'

  # kicad-pcb.org, which is the homepage, now hosts the official distributions and extras
  url "http://downloads.kicad-pcb.org/osx/stable/kicad-extras-#{version}.dmg"
  name 'KiCad Extras'
  homepage 'http://www.kicad-pcb.org/'
  license :gpl

  suite 'Kicad'
end
