cask 'gprojector' do
  version '1.7.4'
  sha256 '6e8d8c5659b8d9719cbf1ac95a1fee814a8411362639493ecfa383a6b929fb71'

  url "http://www.giss.nasa.gov/tools/gprojector/G.ProjectorOSX-#{version}.dmg"
  name 'G.Projector'
  homepage 'http://www.giss.nasa.gov/tools/gprojector/'

  app 'G.Projector.app'

  caveats do
    depends_on_java('7+')
  end
end
