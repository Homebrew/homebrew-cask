cask 'cryptomator' do
  version '1.4.12'
  sha256 'f6a25e46358d764105bc11178d13c22afc2838d273f18b97a093c97567c5fe8d'

  # dl.bintray.com/cryptomator/cryptomator was verified as official when first introduced to the cask
  url "https://dl.bintray.com/cryptomator/cryptomator/#{version}/Cryptomator-#{version}.dmg"
  appcast 'https://github.com/cryptomator/cryptomator/releases.atom'
  name 'Cryptomator'
  homepage 'https://cryptomator.org/'

  depends_on macos: '>= :yosemite'

  app 'Cryptomator.app'
end
