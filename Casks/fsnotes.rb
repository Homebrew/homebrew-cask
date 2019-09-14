cask 'fsnotes' do
  version '3.7.1'
  sha256 'bb83d349a8e0c15cb5c5ffef72080667c5c35c16a7d0424dd43057078a2dd0f9'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
