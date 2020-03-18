cask 'marvel' do
  version '9.1.1'
  sha256 '007c126d031dedc632120a2e1c2e261648477cb80ececd8c71707dbe19a43045'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
