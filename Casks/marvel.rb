cask 'marvel' do
  version '8.2.4'
  sha256 'd6305dda6649b6ac81657bba2620af23b6e63426ce82db023adc00f02a004a92'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
