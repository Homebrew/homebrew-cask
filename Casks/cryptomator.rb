cask 'cryptomator' do
  version '1.3.2'
  sha256 'ae3f7ecde031eef18b6aecec2a6bb9636ffbe37539c1ae94f73ed49b63b83a6e'

  # bintray.com/artifact/download/cryptomator was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/cryptomator/cryptomator/Cryptomator-#{version}.dmg"
  appcast 'https://github.com/cryptomator/cryptomator/releases.atom'
  name 'Cryptomator'
  homepage 'https://cryptomator.org/'

  depends_on macos: '>= :mountain_lion'

  app 'Cryptomator.app'
end
