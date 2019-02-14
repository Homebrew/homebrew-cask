cask 'fsnotes' do
  version '2.9.0'
  sha256 '2ed55098c0f265a8b18221225d8e30f3feab80bff1fa183208b3e40dbab902c7'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
