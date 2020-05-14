cask 'shutter-encoder' do
  version '13.7'
  sha256 '964da3a0a6cf657fbb24490f026c6d04a23c0ef178a26de4e8fe5e657b57922c'

  url "https://www.shutterencoder.com/Shutter%20Encoder%20(MAC%20Version%20#{version}).dmg"
  appcast 'https://www.shutterencoder.com/changelog.txt'
  name 'Shutter Encoder'
  homepage 'https://www.shutterencoder.com/'

  app 'Shutter Encoder.app'
end
