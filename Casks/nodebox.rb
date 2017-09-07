cask 'nodebox' do
  version '3.0.47'
  sha256 '5ecff567f031fea456e2b8dc3eae3f23e29160cda4623dd048e18e5860d54d3b'

  url "https://secure.nodebox.net/downloads/NodeBox-#{version}.zip"
  appcast 'https://www.nodebox.net/node/release-notes.html',
          checkpoint: '3611b14bb85d5c4ecd914bb5b03eb9b38ad7225b524b3a63f26913b1cfc2217b'
  name 'NodeBox'
  homepage 'https://www.nodebox.net/node/'

  app 'NodeBox.app'
end
