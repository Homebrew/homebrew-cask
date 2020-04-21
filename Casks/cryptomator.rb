cask 'cryptomator' do
  version '1.5.0'
  sha256 '3b45453d08c46d4321e0ec6f259e2fa0e3d79773debd3b935e6a4fc5e631e3a8'

  # dl.bintray.com/cryptomator/cryptomator/ was verified as official when first introduced to the cask
  url "https://dl.bintray.com/cryptomator/cryptomator/#{version}/Cryptomator-#{version}.dmg"
  appcast 'https://github.com/cryptomator/cryptomator/releases.atom'
  name 'Cryptomator'
  homepage 'https://cryptomator.org/'

  depends_on macos: '>= :yosemite'

  app 'Cryptomator.app'
end
