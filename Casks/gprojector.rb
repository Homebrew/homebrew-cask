cask 'gprojector' do
  version '2.2.0'
  sha256 '292dc0b6049023cd97af6259c5f5a7aa36d0382eae88882eb8793663da4bbe73'

  url "https://www.giss.nasa.gov/tools/gprojector/download/G.ProjectorMacOS-#{version}.dmg"
  name 'G.Projector'
  homepage 'https://www.giss.nasa.gov/tools/gprojector/'

  app 'G.Projector.app'

  caveats do
    depends_on_java '8+'
  end
end
