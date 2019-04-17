cask 'cryptomator' do
  version '1.4.7'
  sha256 'c226030b77d1f0a623ddb77562725d15339a0214e9b80af4ef19acf62d7ae3c3'

  # dl.bintray.com/cryptomator/cryptomator was verified as official when first introduced to the cask
  url "https://dl.bintray.com/cryptomator/cryptomator/#{version}/Cryptomator-#{version}.dmg"
  appcast 'https://github.com/cryptomator/cryptomator/releases.atom'
  name 'Cryptomator'
  homepage 'https://cryptomator.org/'

  depends_on macos: '>= :yosemite'

  app 'Cryptomator.app'
end
