cask 'augur' do
  version '1.16.5'
  sha256 '0860f41a6c8e558f86fa5430eb0c0a03e09053ce5ebefd5025d30d8e7ea16f40'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
