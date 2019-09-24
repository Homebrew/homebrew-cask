cask 'fsnotes' do
  version '3.8.1'
  sha256 '7265e5ea92ce3f9c348b423a795f5b8d6521b7fad61d2ee7d3a1314fe86c2149'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
