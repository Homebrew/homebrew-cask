cask 'marvel' do
  version '7.5'
  sha256 '099754d09415ab0a9d6f69d47c9eb11ca53864cac9a9e7926939cb4358f2c72b'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url 'https://storage.googleapis.com/sketch-plugin/Marvel.zip'
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml',
          checkpoint: '653c26dbae5cd22fc9f518a42e6488313b5fcf41cdcb6fedb6e2131aaf61f2c1'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
