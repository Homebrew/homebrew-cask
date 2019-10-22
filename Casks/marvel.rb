cask 'marvel' do
  version '8.5.3'
  sha256 '340cd61295a588a29f19b0a24e7672bc506b84a02563f354fa6a9c3eea4bc74d'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
