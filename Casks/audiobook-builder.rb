cask 'audiobook-builder' do
  version '2.1'
  sha256 'be42a85625cfbea6b53e926edd79714556c6b78862c99e3976ec4418ebe5772f'

  url "https://www.splasm.com/downloads/audiobookbuilder/Audiobook%20Builder%20#{version}.dmg"
  appcast 'https://www.splasm.com/audiobookbuilder/'
  name 'Audiobook Builder'
  homepage 'https://www.splasm.com/audiobookbuilder/'

  app 'Audiobook Builder.app'
end
