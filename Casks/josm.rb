cask 'josm' do
  version '13860'
  sha256 '6b6c125f8ba4a9003640714b82b8a70684258d33f29a52639b6238a02562cebc'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end
