cask 'josm' do
  version '12545'
  sha256 'dd7c10af92f66a0f5e6045c595c82d6a1f6ad0b4028bfb7072f7e36a136dda5e'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end
