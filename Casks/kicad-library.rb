class KicadLibrary < Cask
  version '20-03-30'
  sha256 'ac3a4cb284132fefb151b45299e841ec60166492cce706a78ef4b5451f5d2b55'

  url "http://www.mdx4.org/uploads/kicad/Library-#{version}.zip"
  homepage 'https://github.com/KiCad/kicad-library'
  license :gpl

  artifact 'kicad', :target => "#{ENV['HOME']}/Library/Application Support/kicad"
end
