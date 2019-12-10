cask 'cryptomator' do
  version '1.4.17'
  sha256 '85d4ce3c022065d15411d31eb71029ee2f643af6ab34deb492b23bc9e0120298'

  # dl.bintray.com/cryptomator/cryptomator was verified as official when first introduced to the cask
  url "https://dl.bintray.com/cryptomator/cryptomator/#{version}/Cryptomator-#{version}.dmg"
  appcast 'https://github.com/cryptomator/cryptomator/releases.atom'
  name 'Cryptomator'
  homepage 'https://cryptomator.org/'

  depends_on macos: '>= :yosemite'

  app 'Cryptomator.app'
end
