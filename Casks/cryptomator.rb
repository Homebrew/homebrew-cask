cask 'cryptomator' do
  version '1.4.16'
  sha256 'f775b700df194b53542cb1d65410b17f8b67660d2351aa8a87ef0471fdb588f7'

  # dl.bintray.com/cryptomator/cryptomator was verified as official when first introduced to the cask
  url "https://dl.bintray.com/cryptomator/cryptomator/#{version}/Cryptomator-#{version}.dmg"
  appcast 'https://github.com/cryptomator/cryptomator/releases.atom'
  name 'Cryptomator'
  homepage 'https://cryptomator.org/'

  depends_on macos: '>= :yosemite'

  app 'Cryptomator.app'
end
