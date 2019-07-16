cask 'snapndrag' do
  version '4.3.1'
  sha256 'e643cd47fbc3ffbe2ef98f22987ad0e8588d090e017717164a7e14fec9a838da'

  url "https://yellowmug.com/download/SnapNDrag_#{version}.dmg"
  appcast 'https://yellowmug.com/snapndrag/appcast-1014.xml'
  name 'SnapNDrag'
  homepage 'https://www.yellowmug.com/snapndrag/'

  depends_on macos: '>= :high_sierra'

  app 'SnapNDrag.app'
end
