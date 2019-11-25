cask 'ckan' do
  version '1.26.6'
  sha256 'd0c1204c3e51911c93e76fa7846a771aab99099a340a9d5a4a4f9b556c41f467'

  url "https://github.com/KSP-CKAN/CKAN/releases/download/v#{version}/CKAN.dmg"
  appcast 'https://github.com/KSP-CKAN/CKAN/releases.atom'
  name 'Comprehensive Kerbal Archive Network client'
  homepage 'https://github.com/KSP-CKAN/CKAN'

  depends_on cask: 'mono-mdk'

  app 'CKAN.app'
end
