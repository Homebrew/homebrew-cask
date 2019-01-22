cask 'fsnotes' do
  version '2.7.0'
  sha256 '3f3cff821f4a6fb04e8f85fde6981d0ac4c24d2cbe7c5ea9248ceccbc18824de'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
