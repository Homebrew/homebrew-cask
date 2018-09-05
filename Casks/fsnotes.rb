cask 'fsnotes' do
  version '2.1.0'
  sha256 '8725d52875bd95f7a77405a6357d78f5b76f768aea2d508ef67fcdaa3b434274'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
