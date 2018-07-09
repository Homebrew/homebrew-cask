cask 'fsnotes' do
  version '1.9'
  sha256 'c6695a1a8103dc1765f00fdd69a674c0b1338d55526bb89f97b50efc3a3c3e66'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version.before_comma}/FSNotes_#{version.before_comma}#{version.after_comma}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
