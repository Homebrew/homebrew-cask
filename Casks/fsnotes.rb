cask 'fsnotes' do
  version '2.5.2'
  sha256 '46cda3e92a96915f10a3d1f062dae1462543a6971857fdf1f19c4b1609780c11'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
