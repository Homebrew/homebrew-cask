cask :v1 => 'kicad-library' do
  version '20-03-30'
  sha256 'ac3a4cb284132fefb151b45299e841ec60166492cce706a78ef4b5451f5d2b55'

  # mdx4.org is the official download host per the vendor homepage
  url "http://www.mdx4.org/uploads/kicad/Library-#{version}.zip"
  homepage 'http://www.kicad-pcb.org/'
  license :gpl

  artifact 'kicad', :target => Pathname.new(File.expand_path('~')).join('Library/Application Support/kicad')
end
