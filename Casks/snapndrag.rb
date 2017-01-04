cask 'snapndrag' do
  version '4.2.1'
  sha256 '4b768be224b6358b16f8555f3d5b82801a46afc87b1609d91108f71ed0ce93e2'

  url "http://yellowmug.com/download/SnapNDrag_#{version}.dmg"
  appcast 'http://yellowmug.com/snapndrag/appcast-1012.xml',
          checkpoint: 'e850ffe995147b3a8ad8f73caaf067e60390a3dc3aa2fa000b1f93d664dcc81b'
  name 'SnapNDrag'
  homepage 'http://www.yellowmug.com/snapndrag/'

  app 'SnapNDrag.app'
end
