cask 'fsnotes' do
  version '2.4.0'
  sha256 '3a6e6dd01f8f5ecbbb85caa34c40b7bc3720973c643a470ff05e618bc6443e83'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version.major_minor}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
