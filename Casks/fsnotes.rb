cask 'fsnotes' do
  version '3.4.2'
  sha256 '3b75cbe4a0d3335dac62d1910e09a81426a68d36d7c49d401ed8bb22342c2783'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
