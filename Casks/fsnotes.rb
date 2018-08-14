cask 'fsnotes' do
  version '2.0.6'
  sha256 '91dcb6671c5cc7e69c60b114a25a0f89e27f9ff237df99d2fcd0611a275ab028'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
