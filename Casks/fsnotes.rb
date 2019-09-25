cask 'fsnotes' do
  version '3.8.2'
  sha256 '5666ad2806265386b08893cd0b2c579f0ad94421f58070a37410f4aab070ff4d'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
