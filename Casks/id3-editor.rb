cask 'id3-editor' do
  version '1.26.43'
  sha256 '9c1a2c03cec450cdda78c4ac1d27347c4a95cb4afdd9a9a7452b07b7c96522c2'

  url "http://www.pa-software.com/release/ID3Editor.ub.#{version}.dmg"
  name 'ID3 Editor'
  homepage 'http://www.pa-software.com/id3editor/'

  app 'ID3 Editor.app'
end
