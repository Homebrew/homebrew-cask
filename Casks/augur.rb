cask 'augur' do
  version '1.14.1'
  sha256 'a19ecc12aa2907d17ce043e86dd7ef83ba3076794b4c1aba93990806827b18b8'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
