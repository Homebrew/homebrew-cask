cask 'marvel' do
  version '8.0.3'
  sha256 '19e5bfc0d06c61bb3b45b78c9062fadb8fb9e02cf29c17be33c0e9e85fc8445d'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
