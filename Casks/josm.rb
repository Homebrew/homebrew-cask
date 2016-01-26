cask 'josm' do
  version '9329'
  sha256 '12a897c815059ef925a9cbd2727b07967f691148b887d62e48036f076a271f5b'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de'
  license :gpl

  app 'JOSM.app'
end
