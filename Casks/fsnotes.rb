cask 'fsnotes' do
  version '1.8,b154'
  sha256 'b0e96b44bf144194090bb90a4bfc2cafbcb6f92971c8c01e359257d67e2e82de'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url 'https://github.com/glushchenko/fsnotes/releases/download/#{version.before_comma}/FSNotes_#{version.before_comma}#{version.after_comma}.zip'
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
