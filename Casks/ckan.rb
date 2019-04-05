cask 'ckan' do
  version '1.26.0'
  sha256 '298ba572e520c22a30a67d0d86af7207182750281f69aeef266c897ae0f15869'

  url "https://github.com/KSP-CKAN/CKAN/releases/download/v#{version}/CKAN.dmg"
  appcast 'https://github.com/KSP-CKAN/CKAN/releases.atom'
  name 'Comprehensive Kerbal Archive Network client'
  homepage 'https://github.com/KSP-CKAN/CKAN'

  depends_on cask: 'mono-mdk'

  app 'CKAN.app'
end
