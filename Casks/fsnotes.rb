cask 'fsnotes' do
  version '3.5.0'
  sha256 '34b90229b6854a101b9032530042d55efcb980cb2b4fb9f70f485e5ef5972cd4'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
