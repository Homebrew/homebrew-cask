cask 'josm' do
  version '11425'
  sha256 'cf832e92f5886f30813b966ffca71e6cc62235d6dbe88995a54a7187eb54d68f'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end
