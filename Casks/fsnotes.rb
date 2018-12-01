cask 'fsnotes' do
  version '2.5.1'
  sha256 '08ba80759d3ca4008ddc6e84468d4a7b8ebac0b4e6239111563dbd25947f638a'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
