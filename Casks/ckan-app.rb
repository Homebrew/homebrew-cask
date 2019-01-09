cask 'ckan-app' do
  version '1.25.3'
  sha256 'b9d079b8eccbc9651ddee91e9931f1ffa1afcf91db05defe2240f2c16e1e3658'

  url "https://github.com/KSP-CKAN/CKAN/releases/download/v#{version}/CKAN.dmg"
  appcast 'https://github.com/KSP-CKAN/CKAN/releases.atom'
  name 'Comprehensive Kerbal Archive Network client'
  homepage 'https://github.com/KSP-CKAN/CKAN'

  depends_on cask: 'mono-mdk'

  app 'CKAN.app'
end
