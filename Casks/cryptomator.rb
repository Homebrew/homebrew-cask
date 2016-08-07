cask 'cryptomator' do
  version '1.1.3'
  sha256 '9d0a8198575120c35448c831f2b9e7a869be593e8b4c0e671016a27e0bfb59fa'

  # bintray.com/artifact/download/cryptomator was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/cryptomator/cryptomator/Cryptomator-#{version}.dmg"
  name 'Cryptomator'
  homepage 'https://cryptomator.org'
  license :oss

  app 'Cryptomator.app'
end
