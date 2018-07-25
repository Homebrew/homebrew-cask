cask 'fsnotes' do
  version '2.0.3'
  sha256 '8c298fa7e5ec8acfe4cbc3935d1eac565ef48529321f46cf47becf97ea29df91'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version.before_comma}/FSNotes_#{version.before_comma}#{version.after_comma}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
