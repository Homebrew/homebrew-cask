cask 'fsnotes' do
  version '2.7.5'
  sha256 '47c1e6ab6675bc7abc056f063296530742755e0674aa1b94d570eb2a5d7023c3'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
