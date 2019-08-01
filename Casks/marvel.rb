cask 'marvel' do
  version '8.3.3'
  sha256 '40c48a621830b2bdad2e034ebc70fdbdcf53d1da370e4bbe0becd71ae85aeb51'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
