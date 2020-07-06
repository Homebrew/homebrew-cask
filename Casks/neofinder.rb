cask 'neofinder' do
  version '7.6'
  sha256 '3f9ac55d08a086050f6ed7d40010571504a9228aef6fe86599e70b1a4d41934e'

  # wfs-apps.de/ was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast 'https://www.wfs-apps.de/updates/neofinder-appcast-64.xml'
  name 'NeoFinder'
  homepage 'https://www.cdfinder.de/'

  app 'NeoFinder.app'
end
