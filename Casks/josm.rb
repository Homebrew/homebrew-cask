cask 'josm' do
  version '13576'
  sha256 'a8800b9c00052222902ba7d0ef1d3e8855246cd15fa31b3664c33c35f10f7bde'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end
