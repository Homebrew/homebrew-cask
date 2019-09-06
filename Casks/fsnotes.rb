cask 'fsnotes' do
  version '3.6.1'
  sha256 '0b4b5d9e7e0fabbd50f4fb7c0c2f741106a41d008fbcbe35722ff25a3456ee6d'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
