cask 'ckan' do
  version '1.27.0'
  sha256 '34b131cec535445ef9759ef669fe3250ec65f4ba0047cf0bba9e2f8410c5052c'

  url "https://github.com/KSP-CKAN/CKAN/releases/download/v#{version}/CKAN.dmg"
  appcast 'https://github.com/KSP-CKAN/CKAN/releases.atom'
  name 'Comprehensive Kerbal Archive Network client'
  homepage 'https://github.com/KSP-CKAN/CKAN'

  depends_on cask: 'mono-mdk'

  app 'CKAN.app'
end
