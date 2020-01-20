cask 'marvel' do
  version '9.0.0'
  sha256 '99af93b2b70351c26d886490b563b5400b6c8aef2f847d4c0dd1d7e9f04d548e'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
