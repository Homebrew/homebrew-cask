cask 'marvel' do
  version '8.2.8'
  sha256 'a556cd581ba5f609b65b632994a004f84e5456e8e95955217cd19a6ec8a8c55e'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
