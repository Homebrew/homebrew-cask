cask 'marvel' do
  version '8.4.1'
  sha256 'c209f2fbab0b66bdc4318ad2246dc7c78a7ee9d1eccab9a8ed3ca2404ee8f363'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
