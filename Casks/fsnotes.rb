cask 'fsnotes' do
  version '4.0.5'
  sha256 'cd8980bbac29324069f520fe372406488a94f7098e0a7bd9ec009d1c20ee4076'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
