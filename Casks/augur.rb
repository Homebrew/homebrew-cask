cask 'augur' do
  version '1.0.7'
  sha256 'faf7025a0e6a84ac6165f5a0dfc068732de4b80427cd92e3618ac2b4b2cf924e'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
