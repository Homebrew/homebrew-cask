cask 'cryptomator' do
  version '1.5.2'
  sha256 '5c25a8e61b421ad3e51b34e8f99ad08b595ccf712d5310037858b13b092f3713'

  # dl.bintray.com/cryptomator/cryptomator/ was verified as official when first introduced to the cask
  url "https://dl.bintray.com/cryptomator/cryptomator/#{version}/Cryptomator-#{version}.dmg"
  appcast 'https://github.com/cryptomator/cryptomator/releases.atom'
  name 'Cryptomator'
  homepage 'https://cryptomator.org/'

  depends_on macos: '>= :yosemite'

  app 'Cryptomator.app'
end
