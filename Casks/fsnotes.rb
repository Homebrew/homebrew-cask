cask 'fsnotes' do
  version '2.3'
  sha256 'c5e18b2c561af15ea977d06d4586ad12e6e14b2ccaeb26588eaa0d3f0c893adf'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
