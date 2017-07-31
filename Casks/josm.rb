cask 'josm' do
  version '12542'
  sha256 '722134d0e6af82ad1b82878fdd547d40bb2dcfda605bfcdce27f4c1d89fbabda'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end
