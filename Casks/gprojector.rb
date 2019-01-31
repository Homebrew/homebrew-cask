cask 'gprojector' do
  version '2.3.4'
  sha256 '2651a7ab9470b5b39056e15ed1adeea6849dff68a7a2ce9c7ba321d7d156c9b8'

  url "https://www.giss.nasa.gov/tools/gprojector/download/G.ProjectorMacOS-#{version}.dmg"
  name 'G.Projector'
  homepage 'https://www.giss.nasa.gov/tools/gprojector/'

  app 'G.Projector.app'

  caveats do
    depends_on_java '8+'
  end
end
