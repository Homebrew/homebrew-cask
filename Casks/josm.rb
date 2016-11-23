cask 'josm' do
  version '11223'
  sha256 '2391c74817b70bc36b5b5819d6af83944cc6263a814817b8404ee8d1718ecabe'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de'

  app 'JOSM.app'
end
