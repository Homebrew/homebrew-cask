cask 'fsnotes' do
  version '2.0.5,_b164'
  sha256 '96c6366a5cde519ba4097f7faed23b706ef4f4106a9bf6854b2c1f13a98696c1'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version.before_comma}/FSNotes_#{version.before_comma}#{version.after_comma}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
