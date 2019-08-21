cask 'marvel' do
  version '8.4'
  sha256 '9a57e44892ebcad76b7fa09f827ac999be727ec3879eb1131c126bd2a799104f'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
