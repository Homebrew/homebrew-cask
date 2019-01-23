cask 'fsnotes' do
  version '2.7.2'
  sha256 'fcd1b213203f937b886780ebfa36662a2a9fc23598a5d47e390b2e462fb9d5b2'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
