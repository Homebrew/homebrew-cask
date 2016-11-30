cask 'cryptomator' do
  version '1.2.3'
  sha256 '4e7b2baa97c0216ec1f9647dca5ade087a58f2bf22564e6395f5419f09bb7b55'

  # bintray.com/artifact/download/cryptomator was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/cryptomator/cryptomator/Cryptomator-#{version}.dmg"
  name 'Cryptomator'
  homepage 'https://cryptomator.org/'

  app 'Cryptomator.app'
end
