cask 'fsnotes' do
  version '4.0.19'
  sha256 'accb6d787308bffa731ec27648ea7ffaa2abf2b9dab4437bd19dc2248bfc90ce'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'

  zap trash: [
               '~/Library/Application Scripts/co.fluder.FSNotes',
               '~/Library/Containers/co.fluder.FSNotes',
             ]
end
