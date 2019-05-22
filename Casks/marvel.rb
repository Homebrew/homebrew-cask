cask 'marvel' do
  version '8.3.0'
  sha256 'e68fe1e25acec1e1b716e3453762af8cd2c6306359fa7b05d1eab72f444334a1'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
