cask 'cryptomator' do
  version '1.0.5'
  sha256 '3cbdc16ea6fb33406324f786e5305cd6fcf1d53a65d59be46333eea85e33fae3'

  # bintray.com/artifact/download/cryptomator was verified as official when first introduced to the cask
  url "http://bintray.com/artifact/download/cryptomator/cryptomator/Cryptomator-#{version}.dmg"
  name 'Cryptomator'
  homepage 'https://cryptomator.org'
  license :oss

  app 'Cryptomator.app'
end
