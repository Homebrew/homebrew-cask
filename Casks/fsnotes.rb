cask 'fsnotes' do
  version '2.9.2'
  sha256 'c57419d6e199ed2d4b1772637628dc9ea81a8997612fd6845966c3b65dfb8dac'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
