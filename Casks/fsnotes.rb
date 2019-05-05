cask 'fsnotes' do
  version '3.0.3'
  sha256 '9bc4b1d607c13999dfadea0fa1f5f2b644dc93d5d7f2a1fc8c263a19d0810cc9'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
