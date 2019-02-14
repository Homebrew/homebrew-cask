cask 'snapndrag' do
  version '4.3.1'
  sha256 'e643cd47fbc3ffbe2ef98f22987ad0e8588d090e017717164a7e14fec9a838da'

  url "http://yellowmug.com/download/SnapNDrag_#{version}.dmg"
  appcast 'http://yellowmug.com/snapndrag/appcast-1012.xml'
  name 'SnapNDrag'
  homepage 'http://www.yellowmug.com/snapndrag/'

  app 'SnapNDrag.app'
end
