cask 'fsnotes' do
  version '4.0.6'
  sha256 '31ec5677f4670d67c23613106eb9a4b11e53e74dcf420db3e054849f33c261f6'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
