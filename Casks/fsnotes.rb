cask 'fsnotes' do
  version '3.3.7'
  sha256 'f378ae0458ccd82c318d4202f8483543ad8c503f2eb3cfc9cf3a83148721c803'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
