cask 'augur' do
  version '1.2.0'
  sha256 'df17dd1b624251c2f3933f5bf626427aa951ecedfa11773657118d565bd8a233'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
