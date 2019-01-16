cask 'fsnotes' do
  version '2.6.0'
  sha256 '78a25696c8cbc40049b12bee1d104513e693f1a39cc38a49598e945655f75265'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
