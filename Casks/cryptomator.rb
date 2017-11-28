cask 'cryptomator' do
  version '1.3.2'
  sha256 'ae3f7ecde031eef18b6aecec2a6bb9636ffbe37539c1ae94f73ed49b63b83a6e'

  # bintray.com/artifact/download/cryptomator was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/cryptomator/cryptomator/Cryptomator-#{version}.dmg"
  appcast 'https://github.com/cryptomator/cryptomator/releases.atom',
          checkpoint: 'dc858903cfde61a30955533dca7b6b565a08696226ab0298a6e9409470dc9756'
  name 'Cryptomator'
  homepage 'https://cryptomator.org/'

  app 'Cryptomator.app'
end
