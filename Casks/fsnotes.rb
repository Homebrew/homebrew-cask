cask 'fsnotes' do
  version '2.5.3'
  sha256 'fd3a484e9af02010b7e6d5aa7d867dce83e1ea10858e7f19ebca3462fba8d416'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
