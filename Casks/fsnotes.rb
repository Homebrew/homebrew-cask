cask 'fsnotes' do
  version '4.0.3'
  sha256 'c9b51d3e7aae14e1b370b6ace18a0515f0145a6a0d284ab013338bfcc4196aa9'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
