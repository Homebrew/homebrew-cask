cask 'josm' do
  version '12712'
  sha256 '4b0d6bd59b3859f773e6a2a6977b2a90e4323d6e8019c68cbcb4b98f7ca4376d'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end
