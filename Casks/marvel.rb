cask 'marvel' do
  version '9.5'
  sha256 '7a6906b1042386731e91e2fc459928c7c1a60e2a9d2a12d38947d5392b8412c6'

  # storage.googleapis.com/sketch-plugin/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
