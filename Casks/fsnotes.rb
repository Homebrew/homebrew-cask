cask 'fsnotes' do
  version '1.8b154'
  sha256 'b0e96b44bf144194090bb90a4bfc2cafbcb6f92971c8c01e359257d67e2e82de'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url 'https://github.com/glushchenko/fsnotes/releases/download/1.8/FSNotes_1.8b154.zip'
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
