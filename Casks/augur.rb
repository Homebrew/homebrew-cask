cask 'augur' do
  version '1.13.1'
  sha256 'ad06980f5b00e5aa1b77b0d16ea49126add2b2e8f72dc89473690392c746e63a'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
