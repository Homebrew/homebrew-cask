cask 'gprojector' do
  version '2.1.8'
  sha256 'ab26cfb70349fe1bc198a8ca5297643356a3969f3dbec4967ab57d824b9566d1'

  url "https://www.giss.nasa.gov/tools/gprojector/download/G.ProjectorMacOS-#{version}.dmg"
  name 'G.Projector'
  homepage 'https://www.giss.nasa.gov/tools/gprojector/'

  app 'G.Projector.app'

  caveats do
    depends_on_java '8+'
  end
end
