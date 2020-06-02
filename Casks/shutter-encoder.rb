cask 'shutter-encoder' do
  version '13.8'
  sha256 '96e4970477763130a2a4859b95f5f42552a772aad2ec42627af780808081d566'

  url "https://www.shutterencoder.com/Shutter%20Encoder%20(MAC%20Version%20#{version}).zip"
  appcast 'https://www.shutterencoder.com/changelog.txt'
  name 'Shutter Encoder'
  homepage 'https://www.shutterencoder.com/'

  app 'Shutter Encoder.app'
end
