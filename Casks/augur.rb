cask 'augur' do
  version '1.6.2'
  sha256 '171769380a796f270314215d84d3d2349c5885bf5cee8b8dcaadf7a72b0a263e'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
