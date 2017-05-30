cask 'josm' do
  version '12275'
  sha256 '463b62a25d9d9ba30ce9a82635e81e9ec988b061473e93140efb87af2231def9'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end
