cask 'fsnotes' do
  version '3.3.6'
  sha256 'f9fbefe5b1fdcd3cb197e307b7b80c9bcaf107b9a46c60a718c53521ab39dd34'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
