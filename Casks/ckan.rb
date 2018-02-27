cask 'ckan' do
  version 'v1.24.0'
  sha256 '4c116febeeaf4ed95cc6327ca3b220d22f16c8c601d878627367606573c205f8'

  depends_on cask: => "mono-mdk"

  # github.com/KSP-CKAN/CKAN was verified as official when first introduced to the cask
  url "https://github.com/KSP-CKAN/CKAN/releases/download/#{version}/CKAN.dmg"
  appcast 'https://github.com/KSP-CKAN/CKAN/releases.atom',
          checkpoint: 'https://github.com/KSP-CKAN/CKAN/releases.atom'

  name 'Comprehensive Kerbal Archive Network client'
  homepage 'https://forum.kerbalspaceprogram.com/index.php?/topic/154922-*'
  app 'CKAN.app'
end
