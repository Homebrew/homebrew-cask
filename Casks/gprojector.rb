cask 'gprojector' do
  version '2.1.5'
  sha256 '3c4a35f4b04b6c730c436c95057f74bf2e5a1622652e7d83c0b2d64b17fa2810'

  url "https://www.giss.nasa.gov/tools/gprojector/download/G.ProjectorMacOS-#{version}.dmg"
  name 'G.Projector'
  homepage 'https://www.giss.nasa.gov/tools/gprojector/'

  app 'G.Projector.app'

  caveats do
    depends_on_java('8+')
  end
end
