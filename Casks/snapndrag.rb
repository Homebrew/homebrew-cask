cask 'snapndrag' do
  version '4.3.2'
  sha256 'af579ee0d779416923df403c35da15df4a7720a70a3599fa5c677a5971833a62'

  url "https://yellowmug.com/download/SnapNDrag_#{version}.dmg"
  appcast 'https://yellowmug.com/snapndrag/appcast-1014.xml'
  name 'SnapNDrag'
  homepage 'https://www.yellowmug.com/snapndrag/'

  depends_on macos: '>= :high_sierra'

  app 'SnapNDrag.app'
end
