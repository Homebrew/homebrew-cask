cask 'cryptomator' do
  version '1.0.4'
  sha256 '4750dadfe9facd7465b07fccdb41b22a77c56da6a721f8b3506183070ea0a228'

  # bintray.com/artifact/download/cryptomator was verified as official when first introduced to the cask
  url "http://bintray.com/artifact/download/cryptomator/cryptomator/Cryptomator-#{version}.dmg"
  name 'Cryptomator'
  homepage 'https://cryptomator.org'
  license :oss

  app 'Cryptomator.app'
end
