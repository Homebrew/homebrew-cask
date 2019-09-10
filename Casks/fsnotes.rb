cask 'fsnotes' do
  version '3.7.0'
  sha256 '8707d678da485b49a64cd4e1e2311e68630a504d74aab104bb6c166d112ccf86'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
