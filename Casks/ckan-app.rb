cask 'ckan-app' do
  version '1.25.0'
  sha256 '59931b28c91d456d400091a78c29cb8ac99ad9a8cf7019c2a1275f61133fe8df'

  url "https://github.com/KSP-CKAN/CKAN/releases/download/v#{version}/CKAN.dmg"
  appcast 'https://github.com/KSP-CKAN/CKAN/releases.atom',
          checkpoint: '7332163f6416402a6756bf0a08c57a3f948c3b6b94af20db5ec44fccc1c4e888'
  name 'Comprehensive Kerbal Archive Network client'
  homepage 'https://github.com/KSP-CKAN/CKAN'

  depends_on cask: 'mono-mdk'

  app 'CKAN.app'
end
