cask 'augur' do
  version '1.16.1'
  sha256 '80ebe4cbd6f66a0649821fc97c7abbf998c746a23b8084342c401db568200495'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
