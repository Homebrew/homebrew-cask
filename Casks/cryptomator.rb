cask 'cryptomator' do
  version '1.2.2'
  sha256 '2e6d302a7dc2839278483f60566e4f01e267103e936566677e846f3e5ec9f24c'

  # bintray.com/artifact/download/cryptomator was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/cryptomator/cryptomator/Cryptomator-#{version}.dmg"
  name 'Cryptomator'
  homepage 'https://cryptomator.org/'

  app 'Cryptomator.app'
end
