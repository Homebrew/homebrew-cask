cask 'cryptomator' do
  version '1.3.0'
  sha256 '6fa678f0bdc15af485664d18cb6a3381733d97d5222581fb01087ed712a9fbce'

  # bintray.com/artifact/download/cryptomator was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/cryptomator/cryptomator/Cryptomator-#{version}.dmg"
  appcast 'https://github.com/cryptomator/cryptomator/releases.atom',
          checkpoint: 'a5785478203f4bd2e500ee0d62b0077fb27437aa138fb78f805304022315ce48'
  name 'Cryptomator'
  homepage 'https://cryptomator.org/'

  app 'Cryptomator.app'
end
