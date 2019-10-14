cask 'ckan' do
  version '1.26.4'
  sha256 '9eb60df3562310748555dcb4c0d42126425a783430c7f1c71d6d6015ae903a70'

  url "https://github.com/KSP-CKAN/CKAN/releases/download/v#{version}/CKAN.dmg"
  appcast 'https://github.com/KSP-CKAN/CKAN/releases.atom'
  name 'Comprehensive Kerbal Archive Network client'
  homepage 'https://github.com/KSP-CKAN/CKAN'

  depends_on cask: 'mono-mdk'

  app 'CKAN.app'
end
