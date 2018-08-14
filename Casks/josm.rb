cask 'josm' do
  version '14066'
  sha256 '462f986a8d6eb487fd7bea8920f31d6eafce5db1b7441839bbe0cb34308c768e'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end
