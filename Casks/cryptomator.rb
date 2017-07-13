cask 'cryptomator' do
  version '1.3.1'
  sha256 'd9649a87b084efd98ea65d6b93a95e0470b6778a3263fec786fddba818c7f140'

  # bintray.com/artifact/download/cryptomator was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/cryptomator/cryptomator/Cryptomator-#{version}.dmg"
  appcast 'https://github.com/cryptomator/cryptomator/releases.atom',
          checkpoint: '9ed9a21a6aad4badc900649acf3bd26ef1e92e2d18b1e644d1023d2e83e6616e'
  name 'Cryptomator'
  homepage 'https://cryptomator.org/'

  app 'Cryptomator.app'
end
