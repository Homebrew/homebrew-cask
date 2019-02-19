cask 'fsnotes' do
  version '2.9.3'
  sha256 'de95a58a5fe6b3f37899037836b2f1f84b2f9332ecf516126c492da764308bea'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
