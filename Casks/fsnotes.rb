cask 'fsnotes' do
  version '4.0.8'
  sha256 'b35b87ad732a3d76d85cba830b3aacdc4443f15009371dd0f6a9418da566cb12'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
