cask 'augur' do
  version '1.1.0'
  sha256 'a5c73bc34844d9666d91c58a45e09b0449b15aa59d13057cb96341e7a0d470a0'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
