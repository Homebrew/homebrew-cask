cask 'josm' do
  version '14460'
  sha256 '4f7f44b34a91a9c3226062028a08d9c7d53241e18f8a9414480517713ad4a3cf'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end
