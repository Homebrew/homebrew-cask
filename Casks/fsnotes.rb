cask 'fsnotes' do
  version '2.0.7'
  sha256 '4cb917fe7d612dbf7e4c2c512a42729efbb0e2f3c23a6c28bcc69e4d9c07c7ab'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
