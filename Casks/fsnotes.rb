cask 'fsnotes' do
  version '3.6.0'
  sha256 '01ed587b65658fbdbde93cd165a74eef47f2458a65e9be89fa30bd2b6c55e22d'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
