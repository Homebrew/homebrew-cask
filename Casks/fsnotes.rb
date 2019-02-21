cask 'fsnotes' do
  version '2.9.4'
  sha256 'ddd9a6d3cf6b5c9d748547a90fd5c880f6ad0ac9f58f281b08cb253c04fef01f'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
