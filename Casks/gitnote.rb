cask 'gitnote' do
  version '3.0.2'
  sha256 '0af6e346de2bb70af41354356de7cefcb06ce52b6f53c7a327d0eb669f0b4191'

  # github.com/zhaopengme/gitnote was verified as official when first introduced to the cask
  url "https://github.com/zhaopengme/gitnote/releases/download/#{version}/GitNote_setup_#{version}.dmg"
  appcast 'https://github.com/zhaopengme/gitnote/releases.atom'
  name 'gitnote'
  homepage 'https://gitnoteapp.com/'

  app 'GitNote.app'
end
