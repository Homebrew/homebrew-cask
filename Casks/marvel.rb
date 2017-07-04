cask 'marvel' do
  version '5.2.1'
  sha256 '7a2c392c8023362d2b719c10421fbda7f794016e0b47fc0fc904c4ff39eee1eb'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url 'https://storage.googleapis.com/sketch-plugin/Marvel.zip'
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml',
          checkpoint: '3358a74dd7c0688ef3d40d1340051455e70a9a8adf9b0ecaf93e443e80375925'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
