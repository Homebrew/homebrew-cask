cask :v1 => 'josm' do
  version :latest
  sha256 :no_check

  url 'https://josm.openstreetmap.de/download/macosx/josm-macosx.zip'
  homepage 'http://josm.openstreetmap.de'
  license :unknown

  app 'JOSM.app'
end
