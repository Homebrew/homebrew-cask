cask 'josm' do
  version '13500'
  sha256 '6ccdf3c3be06491e8cf3496b9f38662d2fa066f8d67198f05a3f828bf1666129'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end
