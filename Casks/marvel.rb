cask 'marvel' do
  version '7.3'
  sha256 '792a16a1590ba10a1ff562c6419944b2ae48d72535dfd4bec500173344651c5b'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url 'https://storage.googleapis.com/sketch-plugin/Marvel.zip'
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml',
          checkpoint: '7034a6b1267a9abd5d5d8c0c325231069893672bef786d31d119cb80eb12c82e'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
