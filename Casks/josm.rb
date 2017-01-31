cask 'josm' do
  version '11514'
  sha256 'ab09b2c02d1f34b4c48d6bbce0b96006fff2f91ede2ca2a2bac14de916a83c44'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end
