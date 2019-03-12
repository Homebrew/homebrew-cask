cask 'audiobook-builder' do
  version '2.0.1'
  sha256 '5372b3dca0d7bd7fab08614312a5d9b5cceaa21ac387a854596cb2941b65e985'

  url "https://www.splasm.com/downloads/audiobookbuilder/Audiobook%20Builder%20#{version}.dmg"
  appcast 'https://www.splasm.com/audiobookbuilder/'
  name 'Audiobook Builder'
  homepage 'https://www.splasm.com/audiobookbuilder/'

  app 'Audiobook Builder.app'
end
