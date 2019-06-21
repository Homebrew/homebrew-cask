cask 'fsnotes' do
  version '3.3.3'
  sha256 'eaeabf8d136c05faeaedb6e658793ab1608b7f1e1a356ab60ef5cab06e6ebadc'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
