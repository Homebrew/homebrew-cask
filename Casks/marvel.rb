cask 'marvel' do
  version '9.0.1'
  sha256 'bc80b58f103198e28359cd6f1abeaa9068264782fa2470cc4d3dca4774af0e80'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
