cask 'josm' do
  version '13878'
  sha256 '3d937bac5b9544fe551c9efcfc795a5b6af451a3a676c39bab18b75a8a536d68'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end
