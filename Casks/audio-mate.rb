class AudioMate < Cask
  version '2.0.6'
  sha256 '4513e2313950a0a43c1f42e6b27ae274e3a09977e236bde9109ae9382aba8794'

  url "https://s3.amazonaws.com/apps-leftbee/products/downloadables/000/000/005/original/AudioMate-v#{version}.dmg"
  homepage 'http://audiomateapp.com/'

  app 'AudioMate.app'
end
