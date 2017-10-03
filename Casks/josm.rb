cask 'josm' do
  version '12914'
  sha256 'e5e071ddb5af954a405e606dc09077b12377ca6bad9a64889fd6d310f795e437'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end
