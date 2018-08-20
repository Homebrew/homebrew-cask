cask 'augur' do
  version '1.3.1'
  sha256 'f8763587731ecc2cf97d927c87d7d1841f8878cf8ec1811839f600b8d1bbc564'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
