cask 'augur' do
  version '1.3.2'
  sha256 'ce9f1b77f65fbd77977ca06f39cb30ca484e1a7fbacb98a637249ead17657b21'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
