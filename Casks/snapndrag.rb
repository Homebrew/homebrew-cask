cask 'snapndrag' do
  version '4.2.8'
  sha256 '113664b9616fff224aba6d3cb8006cd302f3089b1a93b6f3b5e9f7d0daf00daa'

  url "http://yellowmug.com/download/SnapNDrag_#{version}.dmg"
  appcast 'http://yellowmug.com/snapndrag/appcast-1012.xml'
  name 'SnapNDrag'
  homepage 'http://www.yellowmug.com/snapndrag/'

  app 'SnapNDrag.app'
end
