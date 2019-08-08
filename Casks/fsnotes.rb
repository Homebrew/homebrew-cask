cask 'fsnotes' do
  version '3.3.8'
  sha256 'a12dc33be289f2e69bd724a590138c6fe2e1f705205b40b242d45eb3789be89d'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
