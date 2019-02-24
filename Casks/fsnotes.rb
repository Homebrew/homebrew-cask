cask 'fsnotes' do
  version '2.9.5'
  sha256 '26544c7ce6cb93b25faa3a9a75296f1c6438c365b2a8b8f0c95007a6fe9c8948'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
