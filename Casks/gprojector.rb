cask 'gprojector' do
  version '2.0.0'
  sha256 'd34a53731d5b4c26f9c199c8d897b2bd1812b6174e3413d6aed5b9c75b5bfa7f'

  url "https://www.giss.nasa.gov/tools/gprojector/download/G.ProjectorMacOS-#{version}.dmg"
  name 'G.Projector'
  homepage 'https://www.giss.nasa.gov/tools/gprojector/'

  app 'G.Projector.app'

  caveats do
    depends_on_java('8+')
  end
end
