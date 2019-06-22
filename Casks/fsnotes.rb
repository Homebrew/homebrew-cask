cask 'fsnotes' do
  version '3.3.4'
  sha256 '2f4dd5d5ee7ee5a97e5ca98eef989f5cd618269b47010f96f2194eca950a9fc3'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
