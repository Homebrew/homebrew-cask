cask 'fsnotes' do
  version '2.5.6'
  sha256 '1cc6f8fa5adacb62537481f1915505cd39ad10480dde3c0e8f59be447ece173d'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
