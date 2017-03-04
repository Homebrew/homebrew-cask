cask 'cryptomator' do
  version '1.2.4'
  sha256 'f3753716ee69240d2904740c38a0c280bfca1e3b89fa5111b98db484a896d090'

  # bintray.com/artifact/download/cryptomator was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/cryptomator/cryptomator/Cryptomator-#{version}.dmg"
  appcast 'https://github.com/cryptomator/cryptomator/releases.atom',
          checkpoint: '9d77ffcb25ec02a5671b291264e64d61d6b2c3f08b94ba5e49f49f115c613550'
  name 'Cryptomator'
  homepage 'https://cryptomator.org/'

  app 'Cryptomator.app'
end
