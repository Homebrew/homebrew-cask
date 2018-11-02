cask 'fsnotes' do
  version '2.3.4'
  sha256 '8cec7a2a3a0eac583eb6cf0a72bd5148ec988717fa17da1b8ceed2b401688d2b'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
