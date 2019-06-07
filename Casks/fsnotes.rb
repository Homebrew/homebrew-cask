cask 'fsnotes' do
  version '3.3.0'
  sha256 '52bcdb3a8d236525e567406c468bddaa9cbeba0dfbc1457bba748f52acbde590'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
