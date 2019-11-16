cask 'fsnotes' do
  version '4.0.4'
  sha256 'c93ef0d0969935af241fea399687c517d6612d5b173c2d401078d8b4ff81dec8'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
