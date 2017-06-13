cask 'gprojector' do
  version '2.0.3'
  sha256 '1d2698b65f53a208326c6e406dc1949fd67b1e787679875d6eea8e73e901862e'

  url "https://www.giss.nasa.gov/tools/gprojector/download/G.ProjectorMacOS-#{version}.dmg"
  name 'G.Projector'
  homepage 'https://www.giss.nasa.gov/tools/gprojector/'

  app 'G.Projector.app'

  caveats do
    depends_on_java('8+')
  end
end
