cask 'fsnotes' do
  version '2.0.8'
  sha256 'a7978c4236bf9ff7c9e6b9ce9148d4772aac7dca2fda8e6fb449530e11d2384d'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
