cask 'neofinder' do
  version '7.1.2'
  sha256 '88693244a23edd7e07becf323e3f2671822577eb497418502ae53758606b6975'

  # wfs-apps.de was verified as official when first introduced to the cask
  url "https://www.wfs-apps.de/updates/neofinder.#{version}.zip"
  appcast 'https://www.wfs-apps.de/updates/neofinder-appcast-64.xml',
          checkpoint: 'fc593ae0aa0ccf78e35c7833c32d47dd18404ee2d44e7dc8c43ecc2361ec857e'
  name 'NeoFinder'
  homepage 'https://www.cdfinder.de/'

  app 'NeoFinder.app'
end
