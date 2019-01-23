cask 'fsnotes' do
  version '2.7.1'
  sha256 'f359295bd7db4e66bf80e1a61ba77dd685eb1373cd062a9629866bf764c66c74'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
