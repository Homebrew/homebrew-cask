cask 'ckan' do
  version '1.26.10'
  sha256 '08149d57c60d9d054db95d8d6ecf5c90c152f41c24c3e5f36600d32b504a12a9'

  url "https://github.com/KSP-CKAN/CKAN/releases/download/v#{version}/CKAN.dmg"
  appcast 'https://github.com/KSP-CKAN/CKAN/releases.atom'
  name 'Comprehensive Kerbal Archive Network client'
  homepage 'https://github.com/KSP-CKAN/CKAN'

  depends_on cask: 'mono-mdk'

  app 'CKAN.app'
end
