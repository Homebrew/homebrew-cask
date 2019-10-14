cask 'id3-editor' do
  version '1.27.46'
  sha256 '40fd2500d0dbe6d0131e1340e1fcc0c7afadd8f23fcfc6f78d2b6f98f82515c0'

  url "http://www.pa-software.com/release/ID3Editor.ub.#{version}.dmg"
  appcast 'http://www.pa-software.com/id3editor/'
  name 'ID3 Editor'
  homepage 'http://www.pa-software.com/id3editor/'

  app 'ID3 Editor.app'
end
