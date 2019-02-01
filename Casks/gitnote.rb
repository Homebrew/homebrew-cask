cask 'gitnote' do
  version '3.0.0'
  sha256 '377e66e856f0466e8348c72a49f7b28f4950fae10785b42b317b5a3eb911cb7d'

  # github.com/zhaopengme/gitnote was verified as official when first introduced to the cask
  url "https://github.com/zhaopengme/gitnote/releases/download/#{version}/GitNote_setup_#{version}.dmg"
  appcast 'https://github.com/zhaopengme/gitnote/releases.atom'
  name 'gitnote'
  homepage 'https://gitnoteapp.com/'

  app 'GitNote.app'
end
