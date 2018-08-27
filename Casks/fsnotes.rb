cask 'fsnotes' do
  version '2.0.9'
  sha256 '9028464c9aebb4b0b3bec2461a983cb7266dbfd4cf1c28178e5289db6e08b027'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
