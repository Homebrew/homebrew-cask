cask 'marvel' do
  version '8.4.4'
  sha256 '6df46248a55eb4af686593830fc9eae043353189f9c2c6b87e6135d7347e73ef'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
