cask 'fsnotes' do
  version '3.0.4'
  sha256 '8d7e561ded5a3a772c0c938aa042cc5df7173cb5f2f363396aaf8c6d5ce635b2'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
