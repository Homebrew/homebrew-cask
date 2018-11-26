cask 'fsnotes' do
  version '2.5.0'
  sha256 '6478f87962c1c5ce830278086d2adbc6756cb7f5c4495aceb873c7b2ce6acc5d'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version.major_minor}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
