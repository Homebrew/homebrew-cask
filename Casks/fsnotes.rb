cask 'fsnotes' do
  version '3.3.2'
  sha256 '5c66913fb94016fd1bb3f91f1322439cd5836c6fa367daac62842dc8e4d44737'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
