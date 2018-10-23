cask 'fsnotes' do
  version '2.3.2'
  sha256 '73b03fd6978d6b6b25c97f3e2680b2f2456c1fcd4d7a7641a19c357abaa6623c'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/FSNotes/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
