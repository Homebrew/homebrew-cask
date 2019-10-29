cask 'fsnotes' do
  version '4.0.2'
  sha256 'dbb072a8e4ace877d5f5552530ea7c24aa9ab55a6dad5e1e34447b1cbdb6ae75'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
