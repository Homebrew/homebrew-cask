cask :v1 => 'kicad' do
  version '4.0.0-rc2-1'
  sha256 '32ff44659380aada7ad74d1d3aba27da964d92479c5fd290bf81f9abd27b18b4'

  # kicad-pcb.org, which is the homepage, now hosts the official distributions
  url "http://downloads.kicad-pcb.org/osx/stable/kicad-#{version}.dmg"
  name 'KiCad'
  homepage 'http://www.kicad-pcb.org/'
  license :gpl

  suite 'Kicad'
end
