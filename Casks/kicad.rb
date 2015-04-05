cask :v1 => 'kicad' do
  version 'r5572.20150404-034315'
  sha256 '08bdff67c5c851154b58ff8556c70dbe986f1899e557ff6bf23ab7f658ac696c'

  url "http://downloads.kicad-pcb.org/osx/kicad-#{version}.dmg"
  homepage 'http://www.kicad-pcb.org/'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
  suite 'Kicad'
end
