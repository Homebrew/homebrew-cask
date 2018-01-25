cask 'snapndrag' do
  version '4.2.6'
  sha256 'd91037d537cef7148427b814f1114a9a2e19ac110d2330e3c31ee542fc5b963c'

  url "http://yellowmug.com/download/SnapNDrag_#{version}.dmg"
  appcast 'http://yellowmug.com/snapndrag/appcast-1012.xml',
          checkpoint: '4a3e65ba7e4792b95d9adbbdcc5f40b9c91fe8dbf85983b9a69efc66af1b4cf4'
  name 'SnapNDrag'
  homepage 'http://www.yellowmug.com/snapndrag/'

  app 'SnapNDrag.app'
end
