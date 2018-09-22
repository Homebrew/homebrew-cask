cask 'gprojector' do
  version '2.3.1'
  sha256 'ec3e81494c288e7ce6c1b07d3382ec24ef6da42d87f1d67c35ab226052552df5'

  url "https://www.giss.nasa.gov/tools/gprojector/download/G.ProjectorMacOS-#{version}.dmg"
  name 'G.Projector'
  homepage 'https://www.giss.nasa.gov/tools/gprojector/'

  app 'G.Projector.app'

  caveats do
    depends_on_java '8+'
  end
end
