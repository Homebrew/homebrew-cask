cask 'audiobook-builder' do
  version '1.5.6'
  sha256 '1306fd3fac6f182e17c59a0fa423fd72b0edc4baf00dffdc3a760855774526fa'

  url "http://www.splasm.com/downloads/audiobookbuilder/Audiobook%20Builder%20#{version}.dmg"
  name 'Audiobook Builder'
  homepage 'http://www.splasm.com/audiobookbuilder/'

  app 'Audiobook Builder.app'
end
