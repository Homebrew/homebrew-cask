cask 'marvel' do
  version '8.4.3'
  sha256 '90657ae9c28e6582a453239e5dd57618857c5d08b25ac5a8770c88d8eac82391'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
