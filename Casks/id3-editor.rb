cask 'id3-editor' do
  version '1.25.41'
  sha256 '7f5745d4c93d0442c3fc7b3382869fd9091ceb32641301c1e76f60a5a7907547'

  url "http://www.pa-software.com/release/ID3Editor.ub.#{version}.dmg"
  name 'ID3 Editor'
  homepage 'http://www.pa-software.com/id3editor/'

  app 'ID3 Editor.app'
end
