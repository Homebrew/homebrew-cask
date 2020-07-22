cask 'marvel' do
  version '9.7'
  sha256 '8d2fb1d32d9e9ef4018af116bdb49db8683e8281b596fe6c7d2467eea46a6925'

  # storage.googleapis.com/sketch-plugin/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
