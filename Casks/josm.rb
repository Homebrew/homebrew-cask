cask 'josm' do
  version '9900'
  sha256 '33ee382336c8f26b4fa4de99515e8d95278d80b54bc460a368b0281fe0f5a38f'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de'
  license :gpl

  app 'JOSM.app'
end
