cask 'ckan' do
  version '1.27.2'
  sha256 '094a9ad8535bed7ffcd9138108f213627f9829707ef927ed8dba72250cfe35de'

  url "https://github.com/KSP-CKAN/CKAN/releases/download/v#{version}/CKAN.dmg"
  appcast 'https://github.com/KSP-CKAN/CKAN/releases.atom'
  name 'Comprehensive Kerbal Archive Network client'
  homepage 'https://github.com/KSP-CKAN/CKAN'

  depends_on cask: 'mono-mdk'

  app 'CKAN.app'
end
