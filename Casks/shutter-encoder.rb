cask 'shutter-encoder' do
  version '13.9'
  sha256 '32572babf547c1d39340cfd6ea1f749dfe9c945108ff79de3949ef3ff2ad0e7b'

  url "https://www.shutterencoder.com/Shutter%20Encoder%20(MAC%20Version%20#{version}).zip"
  appcast 'https://www.shutterencoder.com/changelog.txt'
  name 'Shutter Encoder'
  homepage 'https://www.shutterencoder.com/'

  app 'Shutter Encoder.app'
end
