cask 'marvel' do
  version '8.4.2'
  sha256 '869920c9eb156efef818906fbaaa4699ed27a4b461b2b9c35813b47f107a91d1'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
