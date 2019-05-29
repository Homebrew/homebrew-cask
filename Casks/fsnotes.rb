cask 'fsnotes' do
  version '3.2.0'
  sha256 'a6c57cacfb02b187576b7a049c0a677bfc6f264891444d72e3916d7cad6a418b'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
