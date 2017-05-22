cask 'gprojector' do
  version '2.0.2'
  sha256 '2ed1717595330ec93d66abf84ac41c1cd24917a2612eb19374128d6f41345e57'

  url "https://www.giss.nasa.gov/tools/gprojector/download/G.ProjectorMacOS-#{version}.dmg"
  name 'G.Projector'
  homepage 'https://www.giss.nasa.gov/tools/gprojector/'

  app 'G.Projector.app'

  caveats do
    depends_on_java('8+')
  end
end
