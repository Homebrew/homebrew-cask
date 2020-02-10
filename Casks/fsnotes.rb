cask 'fsnotes' do
  version '4.0.21'
  sha256 '4667953e2d99ca4f52bda6bb4e3f2b30806073539c3fc02dcfbf04104a6f842d'

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
