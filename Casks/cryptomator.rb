cask 'cryptomator' do
  version '1.4.6'
  sha256 '2529a2e14b5b5b9566ff9f55679513527966ad5e8b56ff88dfba0619217b58a7'

  # dl.bintray.com/cryptomator/cryptomator was verified as official when first introduced to the cask
  url "https://dl.bintray.com/cryptomator/cryptomator/#{version}/Cryptomator-#{version}.dmg"
  appcast 'https://github.com/cryptomator/cryptomator/releases.atom'
  name 'Cryptomator'
  homepage 'https://cryptomator.org/'

  depends_on macos: '>= :yosemite'

  app 'Cryptomator.app'
end
