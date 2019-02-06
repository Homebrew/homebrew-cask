cask 'fsnotes' do
  version '2.8.2'
  sha256 'c685e5ba01f04dbc47debae580e1f36918f197647128618425dbe7a994a4f89a'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
