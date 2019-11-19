cask 'marvel' do
  version '8.5.6'
  sha256 'c8b46bec4ba7974edac61654160865b0cad3ccded007f776d2d9d2ebfe5af7ea'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
