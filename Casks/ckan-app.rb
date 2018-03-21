cask 'ckan-app' do
  version '1.24.0'
  sha256 '4c116febeeaf4ed95cc6327ca3b220d22f16c8c601d878627367606573c205f8'

  url "https://github.com/KSP-CKAN/CKAN/releases/download/v#{version}/CKAN.dmg"
  appcast 'https://github.com/KSP-CKAN/CKAN/releases.atom',
          checkpoint: 'ec64ae33f2ab43d9324749aa536b066f7cc1679b28035065d9a5d7a3df4ce5b9'
  name 'Comprehensive Kerbal Archive Network client'
  homepage 'https://github.com/KSP-CKAN/CKAN'

  depends_on cask: 'mono-mdk'

  app 'CKAN.app'
end
