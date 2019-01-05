cask 'fsnotes' do
  version '2.5.5'
  sha256 '48d794a31de66e8d9f8e820071d9d4365b4a609402b60603aecc47f4e78b844c'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
