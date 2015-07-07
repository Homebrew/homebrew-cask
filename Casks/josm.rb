cask :v1 => 'josm' do
  version '8491'
  sha256 '8c85d85f66d12bb9caf4cb26aae6aad06d435037135243994b121bbe9cc19c2e'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'http://josm.openstreetmap.de'
  license :gpl

  app 'JOSM.app'
end
