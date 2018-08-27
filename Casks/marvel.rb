cask 'marvel' do
  version '7.5'
  sha256 '099754d09415ab0a9d6f69d47c9eb11ca53864cac9a9e7926939cb4358f2c72b'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url 'https://storage.googleapis.com/sketch-plugin/Marvel.zip'
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
