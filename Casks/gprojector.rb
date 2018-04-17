cask 'gprojector' do
  version '2.1.7'
  sha256 '55ed6b6b02094508bf9011964b2dba6cc305552c56ffb53ab2432a77fba52d25'

  url "https://www.giss.nasa.gov/tools/gprojector/download/G.ProjectorMacOS-#{version}.dmg"
  name 'G.Projector'
  homepage 'https://www.giss.nasa.gov/tools/gprojector/'

  app 'G.Projector.app'

  caveats do
    depends_on_java('8+')
  end
end
