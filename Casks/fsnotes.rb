cask 'fsnotes' do
  version 'v3'
  sha256 '74b3439e52eb1d18e05d2f0e5607e820a6d90113a304395d2130d3e84eff5cfe'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
