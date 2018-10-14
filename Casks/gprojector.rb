cask 'gprojector' do
  version '2.3.2'
  sha256 'f612670ac72be5597310fff80473d06c42215f77dff1e1b4e1a240eabb498430'

  url "https://www.giss.nasa.gov/tools/gprojector/download/G.ProjectorMacOS-#{version}.dmg"
  name 'G.Projector'
  homepage 'https://www.giss.nasa.gov/tools/gprojector/'

  app 'G.Projector.app'

  caveats do
    depends_on_java '8+'
  end
end
