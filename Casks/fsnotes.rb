cask 'fsnotes' do
  version '4.0.0'
  sha256 '85cef272236a844d73b524ef25ab210261bd3ea6348ccaaa3ff14731bfdf1a0b'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
