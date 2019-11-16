cask 'marvel' do
  version '8.5.4'
  sha256 '6d820bc52eb76aecd001b1bececd8b9711730b867c6709cd9e1be17533b6deb6'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
