cask 'fsnotes' do
  version '3.3.5'
  sha256 '57f88f452dbae80c1c6c02f5bf195fff14242746cfe61444d324a93a043eea73'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
