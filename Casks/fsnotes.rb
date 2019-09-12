cask 'fsnotes' do
  version '3.7.0'
  sha256 'c60d68fe410b53ebe6bcf7f537faf8017149e3540b255da1178a3ae17306dacd'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
