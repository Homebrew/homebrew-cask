cask 'fsnotes' do
  version '3.6.2'
  sha256 'cd4e2c627aa150f94b5625c8583512d1b76822d403173f51abc7389085a11dee'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
