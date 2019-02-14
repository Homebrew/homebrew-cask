cask 'gitnote' do
  version '3.0.3'
  sha256 '28801e8a2981ef3658ed35d748bbf37ffc7662b6307d2b31a606af22fe546cda'

  # github.com/zhaopengme/gitnote was verified as official when first introduced to the cask
  url "https://github.com/zhaopengme/gitnote/releases/download/#{version}/GitNote_setup_#{version}.dmg"
  appcast 'https://github.com/zhaopengme/gitnote/releases.atom'
  name 'gitnote'
  homepage 'https://gitnoteapp.com/'

  app 'GitNote.app'
end
