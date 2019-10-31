cask 'augur' do
  version '1.16.3'
  sha256 '0f74c7bb8dec79f637cc16818936e707986de1d0197ba4bea206be3453df722e'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
