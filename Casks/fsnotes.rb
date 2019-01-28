cask 'fsnotes' do
  version '2.7.3'
  sha256 '2da454881120be8fcaa5e01a35849fa9e4c1f27c44db1afd6516325c7e648317'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
