cask 'cryptomator' do
  version '1.5.3'
  sha256 'cff42fe249b44fe8971af4eeabc1ca553b0c60345d2878d9cdbd474a5b17bc9e'

  # dl.bintray.com/cryptomator/cryptomator/ was verified as official when first introduced to the cask
  url "https://dl.bintray.com/cryptomator/cryptomator/#{version}/Cryptomator-#{version}.dmg"
  appcast 'https://github.com/cryptomator/cryptomator/releases.atom'
  name 'Cryptomator'
  homepage 'https://cryptomator.org/'

  depends_on macos: '>= :yosemite'

  app 'Cryptomator.app'
end
