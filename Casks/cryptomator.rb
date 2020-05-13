cask 'cryptomator' do
  version '1.5.4'
  sha256 'f9f2ba4136d9367cdedb509287734734aa9b132f5f48b1d960416ce4c3b6cc44'

  # dl.bintray.com/cryptomator/cryptomator/ was verified as official when first introduced to the cask
  url "https://dl.bintray.com/cryptomator/cryptomator/#{version}/Cryptomator-#{version}.dmg"
  appcast 'https://github.com/cryptomator/cryptomator/releases.atom'
  name 'Cryptomator'
  homepage 'https://cryptomator.org/'

  depends_on macos: '>= :yosemite'

  app 'Cryptomator.app'
end
