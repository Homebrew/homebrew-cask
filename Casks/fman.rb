cask 'fman' do
  version '1.6.6'
  sha256 'a9f1effdd6ab90472c596a4cb7c18a3bd8c23c01f2c1cb52023a66f384d3d575'

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end
