cask 'cryptomator' do
  version '1.1.4'
  sha256 '390bd9bd3ea950238600df41809d63e6b6a905260e3a5a47d14ec6fecca637ad'

  # bintray.com/artifact/download/cryptomator was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/cryptomator/cryptomator/Cryptomator-#{version}.dmg"
  name 'Cryptomator'
  homepage 'https://cryptomator.org'
  license :oss

  app 'Cryptomator.app'
end
