cask 'fsnotes' do
  version '4.0.7'
  sha256 'a2a9c4d9576401a36694dd01e805d89f14afd9da894ee6441a52049647dafc81'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
