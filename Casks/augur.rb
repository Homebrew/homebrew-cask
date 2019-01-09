cask 'augur' do
  version '1.8.6'
  sha256 '9339d1c7fbcd6d68a5d60ee7793ca772ab4c3007142eb673c72b92fe0edcf38d'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
