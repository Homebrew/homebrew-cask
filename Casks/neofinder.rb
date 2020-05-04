cask 'neofinder' do
  version '7.5.2'
  sha256 'dfb8ea64c2e99fe59bfe28a3f4bd5bd45951273a3cc3436a58d9f69eaf0bfa7b'

  # wfs-apps.de/ was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast 'https://www.wfs-apps.de/updates/neofinder-appcast-64.xml'
  name 'NeoFinder'
  homepage 'https://www.cdfinder.de/'

  app 'NeoFinder.app'
end
