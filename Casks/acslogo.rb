cask 'acslogo' do
  version '1.5.1'
  sha256 'fcdab9679a9cc783d4b7912d611442faa1fe1293497c4cb649f6808a58d27082'

  url "https://www.alancsmith.co.uk/logo/ACSLogo#{version.no_dots}.dmg"
  appcast 'https://www.alancsmith.co.uk/logo/release.html'
  name 'ACSLogo'
  homepage 'https://www.alancsmith.co.uk/logo/'

  app 'ACSLogo/ACSLogo.app'
end
