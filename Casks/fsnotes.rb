cask 'fsnotes' do
  version '2.2.3'
  sha256 'd6cd8bfc8e7cb4557abd753c6e9443179140ed161cfe18f60e4a55b59143e0d3'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
