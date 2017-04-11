cask 'gprojector' do
  version '2.0.1'
  sha256 '2420f8663cb718802feae0cf2cd14ca1efd2197c975399a8a931fbe139b56e07'

  url "https://www.giss.nasa.gov/tools/gprojector/download/G.ProjectorMacOS-#{version}.dmg"
  name 'G.Projector'
  homepage 'https://www.giss.nasa.gov/tools/gprojector/'

  app 'G.Projector.app'

  caveats do
    depends_on_java('8+')
  end
end
