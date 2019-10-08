cask 'marvel' do
  version '8.5'
  sha256 'd3391b68b6aadb8938779b718a7409a14d958af9769f548e54dd607cc0e7bdfa'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
