cask 'fsnotes' do
  version '2.5.7'
  sha256 '2337eccc0bf5294aff0db6c0e7e2eaac847b873cd88937280f62ecc41eb5ab07'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
