cask 'josm' do
  version '12443'
  sha256 '16a72947af6fd9feec0998c1a17b672bd1a3efdfc5c272f87931ef1b85276ff6'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end
