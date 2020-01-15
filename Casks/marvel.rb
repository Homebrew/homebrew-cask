cask 'marvel' do
  version '8.5.7'
  sha256 '1061b27ac2520e41485516b2c730105aab06c641104966e1b1f10cd36e020f5d'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
