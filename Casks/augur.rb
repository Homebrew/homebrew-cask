cask 'augur' do
  version '1.16.10'
  sha256 '141aeeff2fc5bfa22c12d64c63f157af89b2c55bcde1cefed41e69232fa78082'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
