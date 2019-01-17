cask 'augur' do
  version '1.9.2'
  sha256 'e67e9cd37aac579ab0a6688398719593380a6889c7ef47e4d38e77859755d9fc'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
