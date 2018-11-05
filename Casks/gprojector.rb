cask 'gprojector' do
  version '2.3.3'
  sha256 'a9a45da164dd61db669c1ce4154a240de426794637fdfa3f24c5b8876f1405d9'

  url "https://www.giss.nasa.gov/tools/gprojector/download/G.ProjectorMacOS-#{version}.dmg"
  name 'G.Projector'
  homepage 'https://www.giss.nasa.gov/tools/gprojector/'

  app 'G.Projector.app'

  caveats do
    depends_on_java '8+'
  end
end
