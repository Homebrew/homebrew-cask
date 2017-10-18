cask 'gprojector' do
  version '2.1.0'
  sha256 '1b12adefa6d9f7eb10e713fa95b63d1bea7b01026574d0fe1e0e442e82c4ff5f'

  url "https://www.giss.nasa.gov/tools/gprojector/download/G.ProjectorMacOS-#{version}.dmg"
  name 'G.Projector'
  homepage 'https://www.giss.nasa.gov/tools/gprojector/'

  app 'G.Projector.app'

  caveats do
    depends_on_java('8+')
  end
end
