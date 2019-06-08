cask 'fsnotes' do
  version '3.3.1'
  sha256 '3d35d96859c7176b1ebda825f3f857cd6ea7e53d66a25fe81708418ade0448a7'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
