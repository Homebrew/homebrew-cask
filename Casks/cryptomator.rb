cask 'cryptomator' do
  version '1.1.0'
  sha256 '7ce23dda88728e92f5e35c5863f1bd54a288da0f32ee15a40290572fac46e903'

  # bintray.com/artifact/download/cryptomator was verified as official when first introduced to the cask
  url "http://bintray.com/artifact/download/cryptomator/cryptomator/Cryptomator-#{version}.dmg"
  name 'Cryptomator'
  homepage 'https://cryptomator.org'
  license :oss

  app 'Cryptomator.app'
end
