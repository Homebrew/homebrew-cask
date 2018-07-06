cask 'ckan-app' do
  version '1.25.1'
  sha256 'e7c3e36f66aca11decc0a3e9f0102152f097a13a98ec8d952a97f148ec5e368f'

  url "https://github.com/KSP-CKAN/CKAN/releases/download/v#{version}/CKAN.dmg"
  appcast 'https://github.com/KSP-CKAN/CKAN/releases.atom'
  name 'Comprehensive Kerbal Archive Network client'
  homepage 'https://github.com/KSP-CKAN/CKAN'

  depends_on cask: 'mono-mdk'

  app 'CKAN.app'
end
