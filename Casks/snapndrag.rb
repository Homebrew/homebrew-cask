cask 'snapndrag' do
  version '4.2.4'
  sha256 '5e4ed74cf420f2c41b69c77d9963dec58a5fd0ed2f11f07eee613ea56054a768'

  url "http://yellowmug.com/download/SnapNDrag_#{version}.dmg"
  appcast 'http://yellowmug.com/snapndrag/appcast-1012.xml',
          checkpoint: '5fd344a724f6fbf98d42bb7a31e29fd787838fb232a9d91482575b280ae6cf71'
  name 'SnapNDrag'
  homepage 'http://www.yellowmug.com/snapndrag/'

  app 'SnapNDrag.app'
end
