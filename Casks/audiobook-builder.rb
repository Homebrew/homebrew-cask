cask 'audiobook-builder' do
  version '2.0.2'
  sha256 '8d235350b46fd5f06c6eddbb54fec9ca5875a0c664e7a2cf8f4e4d48ff99cd85'

  url "https://www.splasm.com/downloads/audiobookbuilder/Audiobook%20Builder%20#{version}.dmg"
  appcast 'https://www.splasm.com/audiobookbuilder/'
  name 'Audiobook Builder'
  homepage 'https://www.splasm.com/audiobookbuilder/'

  app 'Audiobook Builder.app'
end
