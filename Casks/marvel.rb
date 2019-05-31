cask 'marvel' do
  version '8.3.1'
  sha256 'a7f6003ac8ef6c9cf092476c3c02d620012a845ed79d9c84c127ae597cee6c98'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
