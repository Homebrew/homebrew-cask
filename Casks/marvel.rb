cask 'marvel' do
  version '9.0.3'
  sha256 'd2c8141d2f081c8ec9a8d27c819787c78e280dab3283040b9bfcedf7c3da5ab3'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
