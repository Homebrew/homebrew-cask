cask 'augur' do
  version '1.8.4'
  sha256 '890534416a95a4b0ffd58a843e60ebb91bcf4c88d1c9a41cd33a126115f90ac6'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
