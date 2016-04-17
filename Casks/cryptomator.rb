cask 'cryptomator' do
  version '1.0.3'
  sha256 'f880cf16920e1d0adffa549514f8f419fda4b0146341aea67cbcea2a4a589690'

  # bintray.com/artifact/download/cryptomator was verified as official when first introduced to the cask
  url "http://bintray.com/artifact/download/cryptomator/cryptomator/Cryptomator-#{version}.dmg"
  name 'Cryptomator'
  homepage 'https://cryptomator.org'
  license :oss

  app 'Cryptomator.app'
end
