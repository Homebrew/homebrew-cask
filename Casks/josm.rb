cask 'josm' do
  version '14289'
  sha256 'cc798104095969d98128ab08c082d40a882c9e47e6e4cdb70245180a47f9f195'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end
