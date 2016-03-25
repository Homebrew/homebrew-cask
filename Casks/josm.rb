cask 'josm' do
  version '9979'
  sha256 'd25a69ccf06fb5edc86e9152cda4185b2f8f774bcbb45493f39bcf2b1e8cee5e'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de'
  license :gpl

  app 'JOSM.app'
end
