cask 'shutter-encoder' do
  version '13.7'
  sha256 '154d3fcaa1977243f956672bc5f7d1b0a99e4202326713a5501b5ffcf81ff89f'

  url 'https://shutterencoder.com/Shutter%20Encoder%20(MAC%20Version%2013.7).zip'
  appcast 'https://www.shutterencoder.com/changelog.txt'
  name 'Shutter Encoder'
  homepage 'https://www.shutterencoder.com/'

  app 'Shutter Encoder.app'
end
