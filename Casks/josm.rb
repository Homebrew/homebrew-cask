cask 'josm' do
  version '13710'
  sha256 'f3f7bab7da8dbacbf5a1901bfc0f923e3572f0cc657db0a2abed94382222bd46'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end
