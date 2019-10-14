cask 'fsnotes' do
  version '3.9.1'
  sha256 '91390ca3db46bc3c171591fb1a732543409e9425fe8c7edab38da85810a378b5'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
