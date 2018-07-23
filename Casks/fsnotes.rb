cask 'fsnotes' do
  version '2.0'
  sha256 '755ef8a36eea3f144e7b4fdb36f7c1b4e0840bc7d5d69c8baa39550a0f4a9083'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version.before_comma}/FSNotes_#{version.before_comma}#{version.after_comma}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
