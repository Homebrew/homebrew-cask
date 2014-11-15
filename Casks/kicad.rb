cask :v1 => 'kicad' do
  version '2014-02-26'
  sha256 '066520f10e9646e88c2e1d7812adf54a73a331592076f394cb439a97c228410b'

  # mdx4 is the official download host per the vendor homepage
  url "http://www.mdx4.org/uploads/kicad/Kicad-product-#{version}.zip"
  homepage 'http://www.kicad-pcb.org/'
  license :gpl

  suite 'Kicad'
end
