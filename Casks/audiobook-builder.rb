cask 'audiobook-builder' do
  version '1.5.7'
  sha256 '46e4151d97c0a09c8e5c8567c6d2680d4cbe3f4e2c91c6a3415c1552842ba156'

  url "http://www.splasm.com/downloads/audiobookbuilder/Audiobook%20Builder%20#{version}.dmg"
  name 'Audiobook Builder'
  homepage 'https://www.splasm.com/audiobookbuilder/'

  app 'Audiobook Builder.app'
end
