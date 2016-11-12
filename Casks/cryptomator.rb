cask 'cryptomator' do
  version '1.2.1'
  sha256 '24aec5c60cc5c391eacf38c8c0096d3e6b5f743741331ad0c84c11c3d7e201e3'

  # bintray.com/artifact/download/cryptomator was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/cryptomator/cryptomator/Cryptomator-#{version}.dmg"
  name 'Cryptomator'
  homepage 'https://cryptomator.org'

  app 'Cryptomator.app'
end
