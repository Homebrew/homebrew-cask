cask 'gprojector' do
  version '2.1.3'
  sha256 '7ca67ed3c75b1f05ef2fc4857da7f475c0d383666daf3445423676b5e070a243'

  url "https://www.giss.nasa.gov/tools/gprojector/download/G.ProjectorMacOS-#{version}.dmg"
  name 'G.Projector'
  homepage 'https://www.giss.nasa.gov/tools/gprojector/'

  app 'G.Projector.app'

  caveats do
    depends_on_java('8+')
  end
end
