cask 'cryptomator' do
  version '1.5.6'
  sha256 '4bf5d453e957c647fcf14062046e6042159f4dda5b5b324ef0814bc950f30bd9'

  # dl.bintray.com/cryptomator/cryptomator/ was verified as official when first introduced to the cask
  url "https://dl.bintray.com/cryptomator/cryptomator/#{version}/Cryptomator-#{version}.dmg"
  appcast 'https://github.com/cryptomator/cryptomator/releases.atom'
  name 'Cryptomator'
  homepage 'https://cryptomator.org/'

  depends_on macos: '>= :yosemite'

  app 'Cryptomator.app'

  zap trash: [
               '~/Library/Application Support/Cryptomator',
               '~/Library/Logs/Cryptomator',
               '~/Library/Preferences/org.cryptomator.plist',
             ]
end
