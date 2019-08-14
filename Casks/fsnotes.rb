cask 'fsnotes' do
  version '3.4.0'
  sha256 'a887156d2c886343517228253d3bfa0da02a951b122b1ee05fc3b26ea40fb49c'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
