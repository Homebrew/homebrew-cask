cask 'ckan-app' do
  version '1.25.2'
  sha256 '7037b719e9cb8a4c34e432372b4897f25764bab8a2c948270073ffecd2a872ae'

  url "https://github.com/KSP-CKAN/CKAN/releases/download/v#{version}/CKAN.dmg"
  appcast 'https://github.com/KSP-CKAN/CKAN/releases.atom'
  name 'Comprehensive Kerbal Archive Network client'
  homepage 'https://github.com/KSP-CKAN/CKAN'

  depends_on cask: 'mono-mdk'

  app 'CKAN.app'
end
