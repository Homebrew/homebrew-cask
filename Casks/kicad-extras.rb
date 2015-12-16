cask :v1 => 'kicad-extras' do
  version '4.0.0'
  sha256 '8606e3a181b89a8234ea87d44342cbfa50d420375bce30167392c03e6c96db69'

  url "http://downloads.kicad-pcb.org/osx/stable/kicad-extras-#{version}.dmg"
  name 'KiCad Extras'
  homepage 'http://www.kicad-pcb.org/'
  license :gpl

  depends_on :cask => 'kicad'

  artifact 'modules', :target => "#{ENV['HOME']}/Library/Application Support/kicad/modules"
  artifact 'fp-lib-table', :target => "#{ENV['HOME']}/Library/Preferences/kicad/"
end
