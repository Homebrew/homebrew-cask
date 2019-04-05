cask 'marvel' do
  version '8.2.7'
  sha256 '0772709daeed61b6a9b98836d120a5a39084022f1312f73647baf39233ff64b8'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
