cask 'fsnotes' do
  version '2.5.2'
  sha256 '4ff7bdb710e94c79eeed41ea35e508a65b77e54d24aa407bd103c0cd54c8bd4e'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
